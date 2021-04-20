library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity contNb_ctl_tb is
end;

architecture contNb_ctl_tb_arq of contNb_ctl_tb is

    component contNb_ctl is
        generic(N:natural :=4);
        port(
            clk_i:			in std_logic;						-- Clock input
            rx_data:		in std_logic_vector(7 downto 0);	-- 8 bit data input
            rx_data_rdy:	in std_logic;						-- valid when rx_data_rdy is asserted
            count_o:		out std_logic_vector(N-1 downto 0)	-- The counter outputs
        );
    end component;

	constant N_used: integer :=4;
	constant half_period: time := 1 ps;--10 ns;

	signal clock : std_logic := '1';
	signal cont_out: std_logic_vector(N_used-1 downto 0);
    signal data_rdy: std_logic := '0';
    signal data: std_logic_vector(7 downto 0);
	
begin

	DUT: contNb_ctl
		generic map(N => N_used)
		port map(
			clk_i => clock,
			rx_data => data,
			rx_data_rdy => data_rdy,
			count_o  => cont_out
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
--       data <= "00000001"; -- asc=0 ena=0 rst=1
--         wait for half_period*2*2; --wait for 2 clock cycles.
--         data_rdy <= '1';
--        wait for half_period*2*1; --wait for 1 clock cycles.
--         data_rdy <= '0';
--
--		 wait for half_period*2*10; --wait for 10 clock cycles.
--		 data <= "00000010"; -- asc=0 ena=1 rst=0
--         wait for half_period*2*2; --wait for 2 clock cycles.
--         data_rdy <= '1';
--         wait for half_period*2*1; --wait for 1 clock cycles.
--       data_rdy <= '0';
--
--		 wait for half_period*2*40; --wait for 40 clock cycles.
--		 data <= "00000110"; -- asc=1 ena=1 rst=0
--         wait for half_period*2*2; --wait for 2 clock cycles.
--         data_rdy <= '1';
--         wait for half_period*2*1; --wait for 1 clock cycles.
--         data_rdy <= '0';
--		 wait for half_period*2*40; --wait for 40 clock cycles.
		 assert false report "Test: OK" severity failure;
   end process;

end;