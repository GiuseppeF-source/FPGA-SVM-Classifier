library IEEE;
use IEEE.STD_LOGIC_1164.all;
library UNISIM;
use UNISIM.vcomponents.all;
--   DSP48E1   : In order to incorporate this function into the design,
--    VHDL     : the following instance declaration needs to be placed
--  instance   : in the body of the design code.  The instance name
-- declaration : (DSP48E1_inst) and/or the port declarations after the
--    code     : "=>" declaration maybe changed to properly reference and
--             : connect this function to the design.  All inputs and outputs
--             : must be connected.

--   Library   : In addition to adding the instance declaration, a use
-- declaration : statement for the UNISIM.vcomponents library needs to be
--     for     : added before the entity declaration.  This library
--   Xilinx    : contains the component declarations for all Xilinx
-- primitives  : primitives and points to the models that will be used
--             : for simulation.

--  Copy the following two statements and paste them before the
--  Entity declaration, unless they already exist.
entity DSP_AxB_plus_C is
  port (
    Accumulated             : in  std_logic_vector( 29 downto 0 ); -- Risultato accumulato precedentemente
    Kernel_Scale_inv_quadro : in  std_logic_vector( 17 downto 0 ); -- Kernel_Scale^-2
    Bias                    : in  std_logic_vector( 47 downto 0 ); -- Bias 
    Output_SVM              : out std_logic_vector( 47 downto 0 ); -- Risultato finale SVM
    RST                     : in  std_logic;
    CE                      : in  std_logic;
    CLK                     : in  std_logic
  );
end DSP_AxB_plus_C;

architecture Behavioral of DSP_AxB_plus_C is

begin

  -- DSP48E1: 48-bit Multi-Functional Arithmetic Block
  --          Artix-7
  -- Xilinx HDL Language Template, version 2020.2
  DSP48E1_inst : DSP48E1
  generic map(
    -- Feature Control Attributes: Data Path Selection
    A_INPUT => "DIRECT", -- Selects A input source, "DIRECT" (A port) or "CASCADE" (ACIN port)
    B_INPUT => "DIRECT", -- Selects B input source, "DIRECT" (B port) or "CASCADE" (BCIN port)
    USE_DPORT => FALSE, -- Select D port usage (TRUE or FALSE)
    USE_MULT => "MULTIPLY", -- Select multiplier usage ("MULTIPLY", "DYNAMIC", or "NONE")
    USE_SIMD => "ONE48", -- SIMD selection ("ONE48", "TWO24", "FOUR12")

    -- Pattern Detector Attributes: Pattern Detection Configuration
    AUTORESET_PATDET => "NO_RESET", -- "NO_RESET", "RESET_MATCH", "RESET_NOT_MATCH" 
    MASK => X"3fffffffffff", -- 48-bit mask value for pattern detect (1=ignore)
    PATTERN => X"000000000000", -- 48-bit pattern match for pattern detect
    SEL_MASK => "MASK", -- "C", "MASK", "ROUNDING_MODE1", "ROUNDING_MODE2" 
    SEL_PATTERN => "PATTERN", -- Select pattern value ("PATTERN" or "C")
    USE_PATTERN_DETECT => "NO_PATDET", -- Enable pattern detect ("PATDET" or "NO_PATDET")

    -- Register Control Attributes: Pipeline Register Configuration
    ACASCREG => 1, -- Number of pipeline stages between A/ACIN and ACOUT (0, 1 or 2)    -- deve essere 1 come AREG 
    ADREG => 0, -- Number of pipeline stages for pre-adder (0 or 1)
    ALUMODEREG => 0, -- Number of pipeline stages for ALUMODE (0 or 1)
    AREG => 1, -- Number of pipeline stages for A (0, 1 or 2)
    BCASCREG => 1, -- Number of pipeline stages between B/BCIN and BCOUT (0, 1 or 2)
    BREG => 1, -- Number of pipeline stages for B (0, 1 or 2)
    CARRYINREG => 0, -- Number of pipeline stages for CARRYIN (0 or 1)
    CARRYINSELREG => 0, -- Number of pipeline stages for CARRYINSEL (0 or 1)
    CREG => 1, -- Number of pipeline stages for C (0 or 1) -- registro per C
    DREG => 0, -- Number of pipeline stages for D (0 or 1)
    INMODEREG => 0, -- Number of pipeline stages for INMODE (0 or 1)
    MREG => 1, -- Number of multiplier pipeline stages (0 or 1)   -- Aumento delle performance a discapito di 1 clock latency
    OPMODEREG => 0, -- Number of pipeline stages for OPMODE (0 or 1)
    PREG => 1 -- Number of pipeline stages for P (0 or 1)
  )
  port map(
    -- Cascade: 30-bit (each) output: Cascade Ports
   --ACOUT => ACOUT, -- 30-bit output: A port cascade output
   --BCOUT => BCOUT, -- 18-bit output: B port cascade output
   --CARRYCASCOUT => CARRYCASCOUT, -- 1-bit output: Cascade carry output
   -- MULTSIGNOUT => MULTSIGNOUT, -- 1-bit output: Multiplier sign cascade output -- usato per mac extension a 96bit
   --PCOUT => OUT_Cascade, -- 48-bit output: Cascade output

    -- Control: 1-bit (each) output: Control Inputs/Status Bits
   --OVERFLOW => OVERFLOW, -- 1-bit output: Overflow in add/acc output
   --PATTERNBDETECT => PATTERNBDETECT, -- 1-bit output: Pattern bar detect output
   --PATTERNDETECT => PATTERNDETECT, -- 1-bit output: Pattern detect output
   --UNDERFLOW => UNDERFLOW, -- 1-bit output: Underflow in add/acc output

    -- Data: 4-bit (each) output: Data Ports
   --CARRYOUT => CARRYOUT, -- 4-bit output: Carry output
    P => Output_SVM, -- 48-bit output: Primary data output

    -- Cascade: 30-bit (each) input: Cascade Ports
    ACIN => (others => '0') , -- 30-bit input: A cascade data input
    BCIN => (others => '0') , -- 18-bit input: B cascade input
    CARRYCASCIN => '0', -- 1-bit input: Cascade carry input
    MULTSIGNIN => '0', -- 1-bit input: Multiplier sign input
    PCIN => (others => '0') , -- 48-bit input: P cascade input

    -- Control: 4-bit (each) input: Control Inputs/Status Bits
    ALUMODE => "0000", -- 4-bit input: ALU control input       -- Z + X + Y + CIN, tutte somme senza inversioni   
    CARRYINSEL => "000", -- 3-bit input: Carry select input    -- Seleziona CARRYIN proveniente esterno slice -- verr� impostato a 0
    CLK => CLK, -- 1-bit input: Clock input
    INMODE => "10001", -- 5-bit input: INMODE control input    -- Senza pre-adder con D, e 1 solo reg per A e B
    OPMODE => "0110101", -- 7-bit input: Operation mode input  -- A*B + C

    -- Data: 30-bit (each) input: Data Ports
    A => Accumulated, -- 30-bit input: A data input
    B => Kernel_Scale_inv_quadro, -- 18-bit input: B data input
    C => Bias , -- 48-bit input: C data input
    CARRYIN => '0', -- 1-bit input: Carry input signal
    D => (others => '0') , -- 25-bit input: D data input

    -- Reset/Clock Enable: 1-bit (each) input: Reset/Clock Enable Inputs
    CEA1 => CE, -- 1-bit input: Clock enable input for 1st stage AREG
    CEA2 => CE, -- 1-bit input: Clock enable input for 2nd stage AREG
    CEAD => '0', -- 1-bit input: Clock enable input for ADREG
    CEALUMODE => CE, -- 1-bit input: Clock enable input for ALUMODE
    CEB1 => CE, -- 1-bit input: Clock enable input for 1st stage BREG
    CEB2 => CE, -- 1-bit input: Clock enable input for 2nd stage BREG
    CEC => CE, -- 1-bit input: Clock enable input for CREG
    CECARRYIN => '0', -- 1-bit input: Clock enable input for CARRYINREG
    CECTRL => '0', -- 1-bit input: Clock enable input for OPMODEREG and CARRYINSELREG
    CED => '0', -- 1-bit input: Clock enable input for DREG
    CEINMODE => CE, -- 1-bit input: Clock enable input for INMODEREG
    CEM => CE, -- 1-bit input: Clock enable input for MREG
    CEP => CE, -- 1-bit input: Clock enable input for PREG
    RSTA => RST, -- 1-bit input: Reset input for AREG
    RSTALLCARRYIN => '1', -- 1-bit input: Reset input for CARRYINREG
    RSTALUMODE => RST, -- 1-bit input: Reset input for ALUMODEREG
    RSTB => RST, -- 1-bit input: Reset input for BREG
    RSTC => RST, -- 1-bit input: Reset input for CREG
    RSTCTRL => RST, -- 1-bit input: Reset input for OPMODEREG and CARRYINSELREG
    RSTD => '1', -- 1-bit input: Reset input for DREG and ADREG
    RSTINMODE => '0', -- 1-bit input: Reset input for INMODEREG
    RSTM => RST, -- 1-bit input: Reset input for MREG
    RSTP => RST -- 1-bit input: Reset input for PREG
  );

  -- End of DSP48E1_inst instantiation
end Behavioral;