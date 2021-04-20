library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity contNb is
    generic(N:natural :=4);
	port(
		clk_i: in std_logic;
		rst_i: in std_logic;
		ena_i: in std_logic;
        asc_i: in std_logic;
		q: out std_logic_vector(N-1 downto 0)
	);
end;

architecture contNb_arq of contNb is

begin

    process(clk_i)
        variable aux: unsigned(N-1 downto 0);
    
    begin
        if rising_edge(clk_i) then
            if rst_i = '1' then
                aux := (others => '0');
            elsif ena_i = '1' then
                if asc_i = '1' then
                    aux := aux + 1;
                else
                    aux := aux - 1;
                end if;
            end if;
        end if;
        q <= std_logic_vector(aux);
    end process;
            
end;
