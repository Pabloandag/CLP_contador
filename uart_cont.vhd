-------------------------------------------------------------------------------
--
--  Project  : UART controlled counter
--  Module   : uart_cont.v
--  Parent   : None
--  Children : uart_rx.v
--
--  Description: 
--     Ties the UART receiver to the LED controller
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
		CLOCK_RATE: integer := 50E6;
		CONT_N: integer := 4
	);
	port(
		-- Write side inputs
		clk_pin:	in std_logic;      					-- Clock input (from pin)
		rst_pin: 	in std_logic;      					-- Active HIGH reset (from pin)
		rxd_pin: 	in std_logic;      					-- RS232 RXD pin - directly from pin
		cont_pins: 	out std_logic_vector(CONT_N-1 downto 0)    -- 8 LED outputs
	);
end;

architecture uart_cont_arq of uart_cont is

	component uart_rx is
		generic(
			BAUD_RATE: integer := 115200; 	-- Baud rate
			CLOCK_RATE: integer := 50E6
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
			rx_data:		in std_logic_vector(7 downto 0);	-- 8 bit data input
			rx_data_rdy:	in std_logic;						-- valid when rx_data_rdy is asserted
			count_o:		out std_logic_vector(N-1 downto 0)	-- The counter outputs
		);
	end component;

	-- Between uart_rx and led_ctl
	signal rx_data: std_logic_vector(7 downto 0); 	-- Data output of uart_rx
	signal rx_data_rdy: std_logic;  				-- Data ready output of uart_rx
  
begin

	uart_rx_i0: uart_rx 
		generic map(
			CLOCK_RATE 	=> CLOCK_RATE,
			BAUD_RATE  	=> BAUD_RATE
		)
		port map(
			clk_rx     	=> clk_pin,
			rst_clk_rx 	=> rst_pin,--rst_clk_rx,
	
			rxd_i      	=> rxd_pin,
			rxd_clk_rx 	=> open,
	
			rx_data_rdy	=> rx_data_rdy,
			rx_data    	=> rx_data,
			frm_err    	=> open
		);

	inst_contNb_ctl_i0: contNb_ctl
		generic map(N => CONT_N)
		port map(
			clk_i     	=> clk_pin,
			rx_data		=> rx_data,
			rx_data_rdy => rx_data_rdy,
			count_o       => cont_pins
		);
end;