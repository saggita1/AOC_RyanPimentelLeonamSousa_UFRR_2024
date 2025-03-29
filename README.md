# Projeto: Processador 8 Bits RISC

Projeto desenvolvido pelos alunos **Ryan Pimentel** e **Leonam Sousa** do curso de Ciência da Computação da **UFRR**, para a disciplina de **Arquitetura e Organização de Computadores**.

---

## Descrição Geral

Este projeto implementa um **Processador 8 Bits RISC**, com um conjunto de 8 instruções básicas (ADD, SUB, LW, SW, ADDI, LI, BEQ e JUMP). O processador é estruturado em componentes modulares:

1. **Program Counter (PC)**  
2. **ROM** (memória de instruções)  
3. **Decodificador** (separa os campos da instrução)  
4. **Unidade de Controle** (gera sinais de controle com base no opcode)  
5. **Banco de Registradores** (4 registradores de 8 bits)  
6. **MuxULA** (seleciona operandos para a ULA)  
7. **ULA** (executa operações aritméticas e lógicas)  
8. **RAM** (memória de dados para LW e SW)

---

## Organização do Projeto

A pasta do projeto contém, por exemplo:
- `CPU.vhd`: Módulo principal que integra todos os componentes.  
- `ProgramCounter.vhd`: Mantém e atualiza o endereço da próxima instrução.  
- `ROM.vhd`: Armazena as instruções (até 256 linhas).  
- `Decodificador.vhd`: Extrai opcode, rd, rs, imediato etc.  
- `ControlUnit.vhd`: Gera sinais de controle (we_reg, we_mem, branch, jump, alu_op).  
- `RegisterBank.vhd`: Armazena quatro registradores de 8 bits (R0, R1, R2, R3).  
- `MuxULA.vhd`: Seleciona operando(s) para a ULA.  
- `ULA.vhd`: Executa operações como soma, subtração etc.  
- `RAM.vhd`: Memória de dados (para LW/SW).  
- `tb_cpu.vhd`: Testbench que gera clock e exibe sinais no console.



---

## Conjunto de Instruções

Cada instrução tem 8 bits. Resumo:

| Opcode | Instrução | Tipo | Descrição                                          |
|--------|-----------|------|----------------------------------------------------|
| 000    | ADD       | R    | Soma registrador destino e fonte (R-type)          |
| 001    | SUB       | R    | Subtrai registrador fonte do destino (R-type)      |
| 010    | LW        | I    | Carrega da RAM para registrador                    |
| 011    | SW        | I    | Armazena registrador na RAM                        |
| 100    | ADDI      | I    | Soma imediato com registrador destino              |
| 101    | LI        | I    | Carrega imediato em registrador                    |
| 110    | BEQ       | I    | Se igual a R0, PC recebe imediato como novo endereço |
| 111    | JUMP      | J    | Salto incondicional para endereço                  |

---

## Como Executar

1. **Abra ModelSim ou Quartus Prime** (com ModelSim embutido).  
2. **Compile** (vcom / Quartus) todos os arquivos .vhd:
   - Compile primeiro todos os componentes (ProgramCounter, ROM, Decodificador etc.).
   - Depois compile o módulo principal `CPU.vhd`.
   - Por fim, compile o testbench `tb_cpu.vhd`.
3. **Simule** executando o testbench (`tb_cpu`):
   - Observe os valores dos sinais no console (via `report`) ou use as janelas de onda para inspecionar cada ciclo de clock.
4. **Ajuste** caso queira alterar o programa (ex.: troque as instruções na `ROM.vhd`).

---

## Contribuidores

- **Ryan Pimentel**  
- **Leonam Sousa**

---

**Observação:** Este repositório e o relatório foram criados para fins didáticos na disciplina de Arquitetura e Organização de Computadores. Qualquer colaboração adicional é bem-vinda!

**Fim**  
