library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity ProgramCounter is
    Port (
        clk         : in  STD_LOGIC;
        branch      : in  STD_LOGIC;
        jump        : in  STD_LOGIC;
        alu_result  : in  STD_LOGIC_VECTOR(7 downto 0);
        imm         : in  STD_LOGIC_VECTOR(2 downto 0);
        pc          : out STD_LOGIC_VECTOR(7 downto 0)
    );
end ProgramCounter;

architecture Behavioral of ProgramCounter is
    signal pc_reg : STD_LOGIC_VECTOR(7 downto 0) := (others => '0');
begin
    process(clk)
        variable pc_v    : unsigned(7 downto 0);
        variable imm_ext : unsigned(7 downto 0);
    begin
        if rising_edge(clk) then
            -- Por padrão, o próximo PC é o atual + 1
            pc_v := unsigned(pc_reg) + 1;
            -- Expande o imediato de 3 bits para 8 bits (concatenando 5 zeros à esquerda)
            imm_ext := unsigned("00000" & imm);
            if jump = '1' then
                pc_v := unsigned(alu_result);  -- Se jump, PC recebe o valor da ULA
            elsif branch = '1' then
                -- Se branch e a ULA indicar zero, PC = PC + 1 + imediato
                if alu_result = "00000000" then
                    pc_v := unsigned(pc_reg) + imm_ext + 1;
                end if;
            end if;
            pc_reg <= std_logic_vector(pc_v);
        end if;
    end process;
    pc <= pc_reg;
end Behavioral;
