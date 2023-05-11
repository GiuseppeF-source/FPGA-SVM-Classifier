library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use ieee.numeric_std.all;


package Constant_PKG is
-----------------------------------------------------------------------------
-- FUNCTIONS DECLARETIONS
-----------------------------------------------------------------------------
function clogb2 (depth: in natural) return integer;
-----------------------------------------------------------------------------
-- Timing CONSTANTs
-----------------------------------------------------------------------------
constant CLK_PERIOD  		  : time     := 7 ns;
-----------------------------------------------------------------------------
-- AXIS CONSTANTs
-----------------------------------------------------------------------------
constant AXIS_DATA_WIDTH 	  : natural  := 32;
-----------------------------------------------------------------------------
-- SVM CONSTANTs
-----------------------------------------------------------------------------
constant N_SVM				  : natural  := 15;
constant N_ATTRIBUTE		  : natural  := 34;
constant N_CLASSES			  : natural  :=  6;
constant ATTRIBUTE_DATA_WIDTH : natural  :=  8;	
-----------------------------------------------------------------------------
-- COEFFICIENT CONSTANTs
-----------------------------------------------------------------------------
constant PCV_DATA_WIDTH		  : natural  := 408;
constant KERNEL_DATA_WIDTH	  : natural  :=  12;
constant BIAS_DATA_WIDTH	  : natural  :=   7;
-----------------------------------------------------------------------------
-- RAM CONSTANTs
-----------------------------------------------------------------------------
constant RAM_DEPTH			  : natural   := 16;
constant ADDR_WIDTH			  : integer   :=  4;--clogb2(RAM_DEPTH);

end Constant_PKG;



package body Constant_PKG is 
-----------------------------------------------------------------------------
-- FUNCTIONS 
-----------------------------------------------------------------------------
function clogb2( depth : natural) return integer is
variable temp    : integer := depth;
variable ret_val : integer := 0;
begin
    while temp > 1 loop
        ret_val := ret_val + 1;
        temp    := temp / 2;
    end loop;
    return ret_val;
end function;

end package body Constant_PKG;