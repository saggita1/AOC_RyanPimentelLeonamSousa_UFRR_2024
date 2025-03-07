library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity tb_cpu is
end tb_cpu;

architecture Behavioral of tb_cpu is
    signal clk_tb        : STD_LOGIC := '0';
    signal pc_out_tb     : STD_LOGIC_VECTOR(7 downto 0);
    signal instr_out_tb  : STD_LOGIC_VECTOR(7 downto 0);
    signal alu_out_tb    : STD_LOGIC_VECTOR(7 downto 0);
    signal ram_addr_out_tb : STD_LOGIC_VECTOR(7 downto 0);
    signal r0_out_tb, r1_out_tb, r2_out_tb, r3_out_tb : STD_LOGIC_VECTOR(7 downto 0);

    constant clk_period : time := 20 ns;

begin
    DUT : entity work.CPU
        port map(
            clk          => clk_tb,
            pc_out       => pc_out_tb,
            instr_out    => instr_out_tb,
            alu_out      => alu_out_tb,
            ram_addr_out => ram_addr_out_tb,
            r0_out       => r0_out_tb,
            r1_out       => r1_out_tb,
            r2_out       => r2_out_tb,
            r3_out       => r3_out_tb
        );

    clk_process :process
    begin
        while now < 500 ns loop 
            clk_tb <= '0';
            wait for clk_period/2;
            clk_tb <= '1';
            wait for clk_period/2;
        end loop;
        wait;
    end process;

    stimulus_process: process
    begin
        wait for 100 ns;  
        wait for 400 ns; 

        assert false report "Fim da simulação" severity failure;

    end process;

end Behavioral;
