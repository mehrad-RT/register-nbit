----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    10:40:15 06/02/2023 
-- Design Name: 
-- Module Name:    regnbit - Behavioral 
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

entity regnbit is
generic(n: integer:=8);
    Port ( datain : in  STD_LOGIC_VECTOR (n-1 downto 0);
           dataout : inout  STD_LOGIC_VECTOR (n-1 downto 0);
           clk : in  STD_LOGIC;
           en : in  STD_LOGIC;
           reset : in  STD_LOGIC);
end regnbit;

architecture structural of regnbit is


component regi is
    Port ( datain : in  STD_LOGIC;
           dataout : inout  STD_LOGIC;
           clk : in  STD_LOGIC;
           en : in  STD_LOGIC;
           reset : in  STD_LOGIC);
end component;
for all: regi use entity work.regi (structural);

begin

gen: for j in n-1 downto 0 generate
regi1: regi port map(datain(j),dataout(j),clk,en,reset);
end generate;




end structural;

