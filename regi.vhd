----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    10:29:11 06/02/2023 
-- Design Name: 
-- Module Name:    regi - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: 
--
-- Dependencies: 
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity regi is
    Port ( datain : in  STD_LOGIC;
           dataout : inout  STD_LOGIC;
           clk : in  STD_LOGIC;
           en : in  STD_LOGIC;
           reset : in  STD_LOGIC);
end regi;

architecture structural of regi is

component dff is
    Port ( d : in  STD_LOGIC;
           clk : in  STD_LOGIC;
           q : inout  STD_LOGIC:='0';
           nq : inout  STD_LOGIC);
end component;
for all: dff use entity work.dff (structural);

signal muxo,din,nen,nreset,s1,s2 : STD_LOGIC;
begin

d_ff: dff port map(din,clk,dataout);
din <= muxo and nreset;
nreset <= not reset;

s1 <= datain and en;
nen <= not en;
s2 <= dataout and nen;
muxo <= s1 or s2;


end structural;

