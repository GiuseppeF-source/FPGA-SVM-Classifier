-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
-- Date        : Thu Dec  8 12:49:35 2022
-- Host        : peppe-pc running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ embedded_system_axis_to_bram_Bias_0_1_sim_netlist.vhdl
-- Design      : embedded_system_axis_to_bram_Bias_0_1
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z020clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_AXIS_BRAM_mng is
  port (
    addr_ram : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \count_addr_reg[3]_0\ : in STD_LOGIC;
    clk : in STD_LOGIC;
    trig : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_AXIS_BRAM_mng;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_AXIS_BRAM_mng is
  signal \^addr_ram\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \count_addr[3]_i_2_n_0\ : STD_LOGIC;
  signal p_0_in : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \count_addr[0]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \count_addr[1]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \count_addr[2]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \count_addr[3]_i_1\ : label is "soft_lutpair0";
begin
  addr_ram(3 downto 0) <= \^addr_ram\(3 downto 0);
\count_addr[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^addr_ram\(0),
      O => p_0_in(0)
    );
\count_addr[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^addr_ram\(0),
      I1 => \^addr_ram\(1),
      O => p_0_in(1)
    );
\count_addr[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => \^addr_ram\(0),
      I1 => \^addr_ram\(1),
      I2 => \^addr_ram\(2),
      O => p_0_in(2)
    );
\count_addr[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => \^addr_ram\(1),
      I1 => \^addr_ram\(0),
      I2 => \^addr_ram\(2),
      I3 => \^addr_ram\(3),
      O => p_0_in(3)
    );
\count_addr[3]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => trig,
      O => \count_addr[3]_i_2_n_0\
    );
\count_addr_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \count_addr_reg[3]_0\,
      CLR => \count_addr[3]_i_2_n_0\,
      D => p_0_in(0),
      Q => \^addr_ram\(0)
    );
\count_addr_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \count_addr_reg[3]_0\,
      CLR => \count_addr[3]_i_2_n_0\,
      D => p_0_in(1),
      Q => \^addr_ram\(1)
    );
\count_addr_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \count_addr_reg[3]_0\,
      CLR => \count_addr[3]_i_2_n_0\,
      D => p_0_in(2),
      Q => \^addr_ram\(2)
    );
\count_addr_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \count_addr_reg[3]_0\,
      CLR => \count_addr[3]_i_2_n_0\,
      D => p_0_in(3),
      Q => \^addr_ram\(3)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_SIPO_shift_reg_w_full is
  port (
    \gen_IF_DEPTH_FF.count_reg[0]_0\ : out STD_LOGIC;
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    data_out : out STD_LOGIC_VECTOR ( 6 downto 0 );
    clk : in STD_LOGIC;
    s_axis_tvalid : in STD_LOGIC;
    trig : in STD_LOGIC;
    s_axis_tdata : in STD_LOGIC_VECTOR ( 6 downto 0 )
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_SIPO_shift_reg_w_full;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_SIPO_shift_reg_w_full is
  signal \^e\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \^gen_if_depth_ff.count_reg[0]_0\ : STD_LOGIC;
begin
  E(0) <= \^e\(0);
  \gen_IF_DEPTH_FF.count_reg[0]_0\ <= \^gen_if_depth_ff.count_reg[0]_0\;
\gen_IF_DEPTH_FF.count_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \^e\(0),
      Q => \^gen_if_depth_ff.count_reg[0]_0\,
      R => '0'
    );
\gen_IF_DEPTH_FF.shift_reg_reg[0][25]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \^e\(0),
      D => s_axis_tdata(0),
      Q => data_out(0),
      R => '0'
    );
\gen_IF_DEPTH_FF.shift_reg_reg[0][26]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \^e\(0),
      D => s_axis_tdata(1),
      Q => data_out(1),
      R => '0'
    );
\gen_IF_DEPTH_FF.shift_reg_reg[0][27]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \^e\(0),
      D => s_axis_tdata(2),
      Q => data_out(2),
      R => '0'
    );
\gen_IF_DEPTH_FF.shift_reg_reg[0][28]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \^e\(0),
      D => s_axis_tdata(3),
      Q => data_out(3),
      R => '0'
    );
\gen_IF_DEPTH_FF.shift_reg_reg[0][29]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \^e\(0),
      D => s_axis_tdata(4),
      Q => data_out(4),
      R => '0'
    );
\gen_IF_DEPTH_FF.shift_reg_reg[0][30]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \^e\(0),
      D => s_axis_tdata(5),
      Q => data_out(5),
      R => '0'
    );
\gen_IF_DEPTH_FF.shift_reg_reg[0][31]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \^e\(0),
      D => s_axis_tdata(6),
      Q => data_out(6),
      R => '0'
    );
s_axis_tready_INST_0: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => s_axis_tvalid,
      I1 => trig,
      I2 => \^gen_if_depth_ff.count_reg[0]_0\,
      O => \^e\(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axis_to_bram_Bias is
  port (
    data_out : out STD_LOGIC_VECTOR ( 6 downto 0 );
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    addr_ram : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \gen_IF_DEPTH_FF.count_reg[0]\ : out STD_LOGIC;
    s_axis_tdata : in STD_LOGIC_VECTOR ( 6 downto 0 );
    clk : in STD_LOGIC;
    trig : in STD_LOGIC;
    s_axis_tvalid : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axis_to_bram_Bias;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axis_to_bram_Bias is
  signal \^gen_if_depth_ff.count_reg[0]\ : STD_LOGIC;
begin
  \gen_IF_DEPTH_FF.count_reg[0]\ <= \^gen_if_depth_ff.count_reg[0]\;
MNG: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_AXIS_BRAM_mng
     port map (
      addr_ram(3 downto 0) => addr_ram(3 downto 0),
      clk => clk,
      \count_addr_reg[3]_0\ => \^gen_if_depth_ff.count_reg[0]\,
      trig => trig
    );
SIPO: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_SIPO_shift_reg_w_full
     port map (
      E(0) => E(0),
      clk => clk,
      data_out(6 downto 0) => data_out(6 downto 0),
      \gen_IF_DEPTH_FF.count_reg[0]_0\ => \^gen_if_depth_ff.count_reg[0]\,
      s_axis_tdata(6 downto 0) => s_axis_tdata(6 downto 0),
      s_axis_tvalid => s_axis_tvalid,
      trig => trig
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  port (
    clk : in STD_LOGIC;
    trig : in STD_LOGIC;
    s_axis_tready : out STD_LOGIC;
    s_axis_tvalid : in STD_LOGIC;
    s_axis_tdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    addr_ram : out STD_LOGIC_VECTOR ( 3 downto 0 );
    data_out : out STD_LOGIC_VECTOR ( 6 downto 0 );
    en_ram : out STD_LOGIC;
    we_ram : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "embedded_system_axis_to_bram_Bias_0_1,axis_to_bram_Bias,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "yes";
  attribute ip_definition_source : string;
  attribute ip_definition_source of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "module_ref";
  attribute x_core_info : string;
  attribute x_core_info of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "axis_to_bram_Bias,Vivado 2018.3";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  signal \^en_ram\ : STD_LOGIC;
  attribute x_interface_info : string;
  attribute x_interface_info of clk : signal is "xilinx.com:signal:clock:1.0 clk CLK";
  attribute x_interface_parameter : string;
  attribute x_interface_parameter of clk : signal is "XIL_INTERFACENAME clk, FREQ_HZ 50000000, PHASE 0.000, CLK_DOMAIN embedded_system_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0";
  attribute x_interface_info of s_axis_tready : signal is "xilinx.com:user:s_axis:1.0 s_axis TREADY";
  attribute x_interface_info of s_axis_tvalid : signal is "xilinx.com:user:s_axis:1.0 s_axis TVALID";
  attribute x_interface_info of s_axis_tdata : signal is "xilinx.com:user:s_axis:1.0 s_axis TDATA";
begin
  en_ram <= \^en_ram\;
  we_ram <= \^en_ram\;
U0: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axis_to_bram_Bias
     port map (
      E(0) => s_axis_tready,
      addr_ram(3 downto 0) => addr_ram(3 downto 0),
      clk => clk,
      data_out(6 downto 0) => data_out(6 downto 0),
      \gen_IF_DEPTH_FF.count_reg[0]\ => \^en_ram\,
      s_axis_tdata(6 downto 0) => s_axis_tdata(31 downto 25),
      s_axis_tvalid => s_axis_tvalid,
      trig => trig
    );
end STRUCTURE;
