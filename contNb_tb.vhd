library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity contNb_tb is
end;

architecture contNb_tb_arq of contNb_tb is

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

	constant N_used: integer :=4;
	constant half_period: time := 10 ns;

	signal clock : std_logic := '1';
	signal reset: std_logic := '0';
	signal enable: std_logic := '1';
	signal asc: std_logic := '1';
	signal cont_out: std_logic_vector(N_used-1 downto 0);
	
begin

	DUT: contNb
		generic map(N => N_used)
		port map(
			clk_i => clock,
			rst_i => reset,
			ena_i => enable,
			asc_i => asc,
			q 	  => cont_out
		);


	clk_process :process
	begin
		clock <= '0';
		wait for half_period;  --for half of clock period clk stays at '0'.
		clock <= '1';
		wait for half_period;  --for next half of clock period clk stays at '1'.
	end process;
	
	stim_proc: process
	begin        
		 wait for half_period*2*5; --wait for 5 clock cycles.
		 reset <= '1';
		 wait for half_period*2*5; --wait for 5 clock cycles.
		 reset <= '0';
		 wait for half_period*2*40; --wait for 40 clock cycles.
		 asc <= '0';
		 wait for half_period*2*40; --wait for 40 clock cycles.
		 assert false report "Test: OK" severity failure;
   end process;

end;