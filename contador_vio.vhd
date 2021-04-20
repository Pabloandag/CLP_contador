library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity contNb is
    generic(N:natural :=4);
	port(
		clk_i: in std_logic
--		rst_i: in std_logic;
--		ena_i: in std_logic;
--      asc_i: in std_logic;
--		q: out std_logic_vector(N-1 downto 0)
	);
end;

architecture contNb_arq of contNb is
    
    signal rst: std_logic_vector(0 downto 0);
    signal ena: std_logic_vector(0 downto 0);
    signal q  : std_logic_vector(3 downto 0);

COMPONENT vio_0
  PORT (
    clk : IN STD_LOGIC;
    probe_in0 : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
    probe_in1 : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
    probe_out0 : OUT STD_LOGIC_VECTOR(0 DOWNTO 0);
    probe_out1 : OUT STD_LOGIC_VECTOR(0 DOWNTO 0)
  );
END COMPONENT;

    signal ena_cont: std_logic;
    signal gen_ena_o: std_logic_vector(0 downto 0);
begin

    process(clk_i)
        variable aux: unsigned(N-1 downto 0);
    
    begin
        if rising_edge(clk_i) then
            if rst = "1" then
                aux := (others => '0');
            elsif ena_cont = '1' then
                aux := aux + 1;
            end if;
        end if;
        q <= std_logic_vector(aux);
    end process;
    
    ena_cont <= ena(0) and gen_ena_o(0);
    
    inst_gen_ena: entity work.gen_ena
        generic map(
            N => 150E6
        )
        port map(
            clk_i => clk_i,
            ena_pulse_o => gen_ena_o(0)
            );
            
    inst_vio : vio_0
         PORT MAP (
            clk => clk_i,
            probe_in0 => q,
            probe_in1 => gen_ena_o,
            probe_out0 => rst,
            probe_out1 => ena
            );
   
            
end;
