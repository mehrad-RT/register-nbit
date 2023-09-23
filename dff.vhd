----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    10:19:44 06/02/2023 
-- Design Name: 
-- Module Name:    dff - Behavioral 
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

entity dff is
    Port ( d : in  STD_LOGIC;
           clk : in  STD_LOGIC;
           q : inout  STD_LOGIC:='0';
           nq : inout  STD_LOGIC);
end dff;

architecture structural of dff is

component dlatch is
    Port ( d : in  STD_LOGIC;
           e : in  STD_LOGIC;
           q : inout  STD_LOGIC;
           nq : inout  STD_LOGIC);
end component;
for all: dlatch use entity work.dlatch (structural);

signal l1,nclk: STD_LOGIC:='0';

begin

nclk <= not clk;
dl1: dlatch port map(d,nclk,l1);
dl2: dlatch port map(l1,clk,q,nq);



end structural;

