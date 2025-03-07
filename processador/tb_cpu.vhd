library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity tb_CPU is
end tb_CPU;

architecture sim of tb_CPU is
    signal clk         : std_logic := '0';
    signal pc_out      : std_logic_vector(7 downto 0);
    signal instr_out   : std_logic_vector(7 downto 0);
    signal alu_out     : std_logic_vector(7 downto 0);
    signal ram_addr_out: std_logic_vector(7 downto 0);
    signal r0_out, r1_out, r2_out, r3_out : std_logic_vector(7 downto 0);

    constant CLOCK_PERIOD : time := 20 ns;
    constant NUM_CICLOS : integer := 20;

begin
    UUT: entity work.CPU
        port map(
            clk          => clk,
            pc_out       => pc_out,
            instr_out    => instr_out,
            alu_out      => alu_out,
            ram_addr_out => ram_addr_out,
            r0_out       => r0_out,
            r1_out       => r1_out,
            r2_out       => r2_out,
            r3_out       => r3_out
        );
    clock_gen : process
        variable i : integer := 0;
    begin
        while i < NUM_CICLOS loop
            clk <= '0';
            wait for CLOCK_PERIOD/2;
            clk <= '1';
            wait for CLOCK_PERIOD/2;
            i := i + 1;
        end loop;
        
        wait;
    end process;

    monitor : process(clk)
    begin
        if rising_edge(clk) then
            report 
                "PC = " & to_hstring(pc_out)      &
                " | Instr = " & to_hstring(instr_out) &
                " | ALU = " & to_hstring(alu_out) &
                " | RAM_addr = " & to_hstring(ram_addr_out) &
                " | R0 = " & to_hstring(r0_out)   &
                " | R1 = " & to_hstring(r1_out)   &
                " | R2 = " & to_hstring(r2_out)   &
                " | R3 = " & to_hstring(r3_out);
        end if;
    end process;

end sim;
