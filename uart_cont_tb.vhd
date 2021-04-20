library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity uart_cont_tb is
end;

architecture uart_cont_tb_arq of uart_cont_tb is

    component uart_cont is
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
    end component;

    constant BAUD_RATE_used: integer :=115200;
    constant CLOCK_RATE_used: integer :=50E6;
    constant CONT_N_used: integer :=4;
	constant half_period: time := 10 ns;

	signal clock : std_logic := '1';
	signal cont_out: std_logic_vector(CONT_N_used-1 downto 0);
    signal rst: std_logic := '0';
    signal rxd: std_logic := '0';
    ---signal data: std_logic_vector(7 downto 0);
	
begin

	DUT: uart_cont
		generic map(BAUD_RATE   => BAUD_RATE_used,   
                    CLOCK_RATE  => CLOCK_RATE_used,
                    CONT_N      => CONT_N_used)
		port map(
			clk_pin => clock,
			rst_pin => rst,
			rxd_pin => rxd,
			cont_pins  => cont_out
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
       	rst <= '1';
        rxd <= '1';
        wait for half_period*2*1;
        rst <= '0';
        wait for half_period*2*10; --wait for 10 clock cycles.
      	rxd <= '0';
        
        wait for half_period*2*10; --wait for 1 clock cycles.
        rxd <= '1';

		wait for half_period*2*300; --wait for 40 clock cycles.
		assert false report "Test: OK" severity failure;
   end process;

end;