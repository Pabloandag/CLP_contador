-----------------------------------------------------------------------------
--  
--  
--
--  Project  : UART controlled counter
--  Module   : contNb_ctl.v
--  Parent   : uart_cont.v
--  Children : None
--
--  Description: 
--     Counter output generator
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

entity contNb_ctl is
	generic(N:natural :=4);
	port(
		clk_i:			in std_logic;						-- Clock input
		ena_i:          in std_logic;                       -- External enable
		rx_data:		in std_logic_vector(7 downto 0);	-- 8 bit data input
		rx_data_rdy:	in std_logic;						-- valid when rx_data_rdy is asserted
		count_o:		out std_logic_vector(N-1 downto 0)	-- The counter outputs
	);
end;


architecture contNb_ctl_arq of contNb_ctl is

	component contNb is
		generic(N:natural :=4);
		port(
			clk_i: in std_logic;
			rst_i: in std_logic;
			ena_i: in std_logic;
			asc_i: in std_logic;
			q: out std_logic_vector(N-1 downto 0)
		);
	end component;

	signal old_rx_data_rdy: std_logic;
	signal rst,asc,ena: std_logic;
	signal aux: std_logic := '0';

begin

	contNb_i0: contNb
		generic map(N => N)
		port map(
			clk_i => clk_i,
			rst_i => rst,
			ena_i => ena,
			asc_i => asc,
			q 	  => count_o
		);

	process(clk_i)
	begin
		if rising_edge(clk_i) then
			if rst = '1' then
				old_rx_data_rdy <= '0';
				rst <= '0';
			else
				-- Capture the value of rx_data_rdy for edge detection
				old_rx_data_rdy <= rx_data_rdy;
				-- If rising edge of rx_data_rdy, capture rx_data
				if (rx_data_rdy = '1' and old_rx_data_rdy = '0') then
					rst <= rx_data(0);
					aux <= rx_data(1);
					asc <= rx_data(2);
				end if;
			end if;	-- if !rst
		end if;
	end process;
	
    ena <= aux and ena_i;
end;

