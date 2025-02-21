-- PROGRAM COUNTER
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
            -- Incremento padrão: PC + 1
            pc_v := unsigned(pc_reg) + 1;
            imm_ext := unsigned("00000" & imm);  -- Expande o imediato para 8 bits
            if jump = '1' then
                -- Salto incondicional: PC recebe o valor da ULA (destino do salto)
                pc_v := unsigned(alu_result);
            elsif branch = '1' then
                -- BEQ: compara o valor do registrador (Rdest) com R0
                -- Se a subtração (Rdest - R0) resultar em zero, a condição é satisfeita.
                -- Nesse caso, o PC recebe o imediato estendido (valor absoluto) como novo endereço.
                if alu_result = "00000000" then
                    pc_v := imm_ext;
                end if;
            end if;
            pc_reg <= std_logic_vector(pc_v);
        end if;
    end process;
    pc <= pc_reg;
end Behavioral;
