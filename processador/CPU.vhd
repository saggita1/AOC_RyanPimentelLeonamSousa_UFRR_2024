library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity CPU is
    Port (
        clk         : in  STD_LOGIC;
        pc_out      : out STD_LOGIC_VECTOR(7 downto 0);
        instr_out   : out STD_LOGIC_VECTOR(7 downto 0);
        alu_out     : out STD_LOGIC_VECTOR(7 downto 0);
        ram_addr_out: out STD_LOGIC_VECTOR(7 downto 0);
        r0_out, r1_out, r2_out, r3_out : out STD_LOGIC_VECTOR(7 downto 0)
    );
end CPU;

architecture Behavioral of CPU is
    -- Sinais internos principais
    signal pc         : STD_LOGIC_VECTOR(7 downto 0);
    signal instr      : STD_LOGIC_VECTOR(7 downto 0);
    signal opcode     : STD_LOGIC_VECTOR(2 downto 0);
    signal rd, rs     : STD_LOGIC_VECTOR(1 downto 0);
    signal imm        : STD_LOGIC_VECTOR(2 downto 0);
    signal jump5      : STD_LOGIC_VECTOR(4 downto 0);
    signal we_reg, we_mem, branch, jump : STD_LOGIC;
    signal alu_op     : STD_LOGIC_VECTOR(2 downto 0);
    signal reg_data1, reg_data2 : STD_LOGIC_VECTOR(7 downto 0);
    signal wdata      : STD_LOGIC_VECTOR(7 downto 0);
    signal alu_a, alu_b : STD_LOGIC_VECTOR(7 downto 0);
    signal alu_result : STD_LOGIC_VECTOR(7 downto 0);
    signal ram_addr   : STD_LOGIC_VECTOR(7 downto 0);
    signal ram_dout   : STD_LOGIC_VECTOR(7 downto 0);
    
    signal raddr1, raddr2 : STD_LOGIC_VECTOR(1 downto 0);
    
begin
    -- Instanciação do ProgramCounter
    PC_inst: entity work.ProgramCounter
        port map(
            clk        => clk,
            branch     => branch,
            jump       => jump,
            alu_result => alu_result,
            imm        => imm,
            pc         => pc
        );
    pc_out <= pc;
    
    -- Instanciação da ROM
    ROM_inst: entity work.ROM
        port map(
            addr  => pc,
            instr => instr
        );
    instr_out <= instr;
    
    -- Instanciação do Decodificador
    Decodificador_inst: entity work.Decodificador
        port map(
            instr   => instr,
            opcode  => opcode,
            rd      => rd,
            rs      => rs,
            imm     => imm,
            jump5   => jump5
        );
    
    -- Instanciação da Unidade de Controle
    CU_inst: entity work.ControlUnit
        port map(
            opcode_3b => opcode,
            we_reg    => we_reg,
            we_mem    => we_mem,
            branch    => branch,
            jump      => jump,
            alu_op    => alu_op
        );
    
    -- Instanciação do Banco de Registradores
    raddr1 <= rd;
    raddr2 <= rs when (opcode = "000" or opcode = "001") else "00";
    RegBank_inst: entity work.RegisterBank
        port map(
            clk     => clk,
            we      => we_reg,
            raddr1  => raddr1,
            raddr2  => raddr2,
            waddr   => rd,  -- escreve no registrador destino
            wdata   => wdata,
            rdata1  => reg_data1,
            rdata2  => reg_data2,
            r0_out  => r0_out,
            r1_out  => r1_out,
            r2_out  => r2_out,
            r3_out  => r3_out
        );
    
    -- Instanciação do MuxULA para selecionar os operandos da ULA
    MuxULA_inst: entity work.MuxULA
        port map(
            opcode    => opcode,
            reg_data1 => reg_data1,
            reg_data2 => reg_data2,
            imm       => imm,
            jump5     => jump5,
            alu_a     => alu_a,
            alu_b     => alu_b
        );
    
    -- Instanciação da ULA
    ALU_inst: entity work.ULA
        port map(
            op     => alu_op,
            a      => alu_a,
            b      => alu_b,
            result => alu_result
        );
    alu_out <= alu_result;
    
    -- Seleção do dado a ser escrito (wdata) e do endereço da RAM
    wdata <= alu_result when opcode = "000" or opcode = "001" or opcode = "100" or opcode = "101" else
             ram_dout when opcode = "010" else
             (others => '0');
    
    ram_addr <= alu_result when opcode = "010" or opcode = "011" else (others => '0');
    
    -- Instanciação da RAM
    RAM_inst: entity work.RAM
        port map(
            clk  => clk,
            addr => ram_addr,
            we   => we_mem,
            din  => reg_data1,
            dout => ram_dout
        );
    ram_addr_out <= ram_addr;
    
end Behavioral;
