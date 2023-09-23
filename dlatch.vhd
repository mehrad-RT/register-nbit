----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    10:18:10 06/02/2023 
-- Design Name: 
-- Module Name:    dlatch - Behavioral 
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

entity dlatch is
    Port ( d : in  STD_LOGIC;
           e : in  STD_LOGIC;
           q : inout  STD_LOGIC;
           nq : inout  STD_LOGIC);
end dlatch;

architecture structural of dlatch is

signal s1,s2,nd : STD_LOGIC;

begin

s1 <= d nand e;
nd <= d nand d;
s2 <= nd nand e;
q <= s1 nand nq;
nq <= s2 nand q;



end structural;

