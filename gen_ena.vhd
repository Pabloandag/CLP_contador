library IEEE;
use IEEE.std_logic_1164.all;

entity gen_ena is
    generic(
        N: natural :=4
    );
    port(
        clk_i: in std_logic;
        ena_pulse_o: out std_logic
    );
end;


architecture gen_ena_arq of gen_ena is

begin
    process(clk_i)
        variable count: integer range 0 to N := 0;
    begin
        if rising_edge(clk_i) then
            count := count + 1;
            if count = N then
                count := 0;
                ena_pulse_o <= '1';
            else
                ena_pulse_o <= '0';
            end if;
        end if;
    end process;
end;