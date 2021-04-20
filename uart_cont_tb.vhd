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

    -- UART config
    constant BAUD_RATE_used: integer :=115200;
    constant BIT_PERIOD : time := 8680 ns;

    -- Counter config
    constant CONT_N_used: integer :=4;
    
    -- CLOCK config
    constant CLOCK_RATE_used: integer :=50E6;
	constant HALF_PERIOD: time := 10 ns;    --1/(2*CLOCK_RATE)

    -- Signals

	signal clock : std_logic := '1';
	signal cont_out: std_logic_vector(CONT_N_used-1 downto 0);
    signal rst: std_logic := '0';
    signal rxd: std_logic := '0';

    -- Low-level byte-write
    procedure UART_WRITE_BYTE (
                                data_i       : in  std_logic_vector(7 downto 0);
                                signal serial_o : out std_logic) is
    begin
 
        -- Send Start Bit
        serial_o <= '0';
        wait for BIT_PERIOD;

        -- Send Data Byte
        for ii in 0 to 7 loop
            serial_o <= data_i(ii);
            wait for BIT_PERIOD;
        end loop;  -- ii
 
        -- Send Stop Bit
        serial_o <= '1';
        wait for BIT_PERIOD;
    end UART_WRITE_BYTE;

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
		wait for HALF_PERIOD;  --for half of clock period clk stays at '0'.
		clock <= '1';
		wait for HALF_PERIOD;  --for next half of clock period clk stays at '1'.
	end process;
	
	stim_proc: process
	begin
        -- reset        
		wait for HALF_PERIOD*2*5; --wait for 5 clock cycles.
       	rst <= '1';
        rxd <= '1';
        wait for HALF_PERIOD*2*1;
        rst <= '0';

        -- Write ASC=0 ENA=0 RST=0 
        UART_WRITE_BYTE(X"00",rxd);
        wait for HALF_PERIOD*2*30; -- wait 30 clock cycles
        
        -- Write ASC=0 ENA=0 RST=1 
        UART_WRITE_BYTE(X"01",rxd);
        wait for HALF_PERIOD*2*30; -- wait 30 clock cycles

        -- Write ASC=0 ENA=1 RST=0 
        UART_WRITE_BYTE(X"02",rxd);
        wait for HALF_PERIOD*2*30; -- wait 30 clock cycles

        -- Write ASC=0 ENA=1 RST=1 
        UART_WRITE_BYTE(X"03",rxd);
        wait for HALF_PERIOD*2*30; -- wait 30 clock cycles

        -- Write ASC=1 ENA=0 RST=0 
        UART_WRITE_BYTE(X"04",rxd);
        wait for HALF_PERIOD*2*30; -- wait 30 clock cycles

        -- Write ASC=1 ENA=0 RST=1 
        UART_WRITE_BYTE(X"05",rxd);
        wait for HALF_PERIOD*2*30; -- wait 30 clock cycles

        -- Write ASC=1 ENA=1 RST=0 
        UART_WRITE_BYTE(X"06",rxd);
        wait for HALF_PERIOD*2*30; -- wait 30 clock cycles

        -- Write ASC=1 ENA=1 RST=1 
        UART_WRITE_BYTE(X"07",rxd);
        wait for HALF_PERIOD*2*30; -- wait 30 clock cycles
		assert false report "Test: OK" severity failure;
   end process;

end;