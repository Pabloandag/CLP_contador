-------------------------------------------------------------------------------
--
--  Project  : UART controlled counter
--  Module   : uart_cont.v
--  Parent   : None
--  Children : uart_rx.v contNb_ctl.v
--
--  Description: 
--     Ties the UART receiver to the counter controller
--
--  Parameters:
--     None
--
--  Local Parameters:
--
--  Notes       : 
--
--  Multicycle and False Paths
--    None
--

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity uart_cont is
	generic(
		BAUD_RATE: integer := 115200;   
		CLOCK_RATE: integer := 150E6;
		CONT_N: integer := 4
	);
	port(
		-- Write side inputs
		clk_pin:	in std_logic;      					-- Clock input (from pin)
		--ena_pin:    in std_logic;                       -- Enable input (from pin)
		--rst_pin: 	in std_logic;      					-- Active HIGH reset (from pin)
		rxd_pin: 	in std_logic      					-- RS232 RXD pin - directly from pin
		--cont_pins: 	out std_logic_vector(CONT_N-1 downto 0)    -- 8 LED outputs
	);
end;

architecture uart_cont_arq of uart_cont is

    signal rst: std_logic_vector(0 downto 0);
    signal cont_pins: std_logic_vector(CONT_N-1 downto 0);
    signal ena: std_logic_vector(0 downto 0);
    signal cont_ena: std_logic;
    
    component vio_0
    port (
        clk : IN STD_LOGIC;
        probe_in0 : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
        probe_in1 : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
        probe_out0 : OUT STD_LOGIC_VECTOR(0 DOWNTO 0);
        probe_out1 : OUT STD_LOGIC_VECTOR(0 DOWNTO 0)
    );
    end component;
    
	component uart_rx is
		generic(
			BAUD_RATE: integer := 115200; 	-- Baud rate
			CLOCK_RATE: integer := 150E6
		);

		port(
			-- Write side inputs
			clk_rx: in std_logic;       				-- Clock input
			rst_clk_rx: in std_logic;   				-- Active HIGH reset - synchronous to clk_rx
							
			rxd_i: in std_logic;        				-- RS232 RXD pin - Directly from pad
			rxd_clk_rx: out std_logic;					-- RXD pin after synchronization to clk_rx
		
			rx_data: out std_logic_vector(7 downto 0);	-- 8 bit data output
														--  - valid when rx_data_rdy is asserted
			rx_data_rdy: out std_logic;  				-- Ready signal for rx_data
			frm_err: out std_logic       				-- The STOP bit was not detected	
		);
	end component;

	component contNb_ctl is
		generic(N:natural :=4);
		port(
			clk_i:			in std_logic;						-- Clock input
			ena_i:          in std_logic;                       -- External enable
			rx_data:		in std_logic_vector(7 downto 0);	-- 8 bit data input
			rx_data_rdy:	in std_logic;						-- valid when rx_data_rdy is asserted
			count_o:		out std_logic_vector(N-1 downto 0)	-- The counter outputs
		);
	end component;

	-- Between uart_rx and contNb_ctl
	signal rx_data: std_logic_vector(7 downto 0); 	-- Data output of uart_rx
	signal rx_data_rdy: std_logic;  				-- Data ready output of uart_rx
  
    -- Enable generator output
    signal gen_ena_o: std_logic;
    
begin

	uart_rx_i0: uart_rx 
		generic map(
			CLOCK_RATE 	=> CLOCK_RATE,
			BAUD_RATE  	=> BAUD_RATE
		)
		port map(
			clk_rx     	=> clk_pin,
			rst_clk_rx 	=> rst(0),--rst_clk_rx,
	
			rxd_i      	=> rxd_pin,
			rxd_clk_rx 	=> open,
	
			rx_data_rdy	=> rx_data_rdy,
			rx_data    	=> rx_data,
			frm_err    	=> open
		);

	contNb_ctl_i0: contNb_ctl
		generic map(N => CONT_N)
		port map(
			clk_i     	=> clk_pin,
			ena_i       => cont_ena,
			rx_data		=> rx_data,
			rx_data_rdy => rx_data_rdy,
			count_o       => cont_pins
		);
		
	gen_ena_i0: entity work.gen_ena
            generic map(
                N => CLOCK_RATE
            )
            port map(
                clk_i => clk_pin,
                ena_pulse_o => gen_ena_o
            );
            
    VIO_i0 : vio_0
              PORT MAP (
                clk => clk_pin,
                probe_in0 => cont_pins,
                probe_in1 => rx_data,
                probe_out0 => ena,
                probe_out1 => rst
              );
     
    cont_ena <= gen_ena_o and ena(0);           
end;