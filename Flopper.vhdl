----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    10:38:07 05/12/2022 
-- Design Name: 
-- Module Name:    Flopper - Behavioral 
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
use work.ALU.all;
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity Flopper is
generic(n:Natural :=32);
    Port ( D : in  STD_LOGIC_vector(n-1 downto 0);
           Q : out  STD_LOGIC_vector(n-1 downto 0);
           rst : in  STD_LOGIC;
           clk : in  STD_LOGIC);
end Flopper;

architecture Behavioral of Flopper is

begin

process(rst,clk)
begin
   if(rst='1') then
      	Q<=(others=>'0') ;
elsif (clk'EVENT AND clk='1')
         then Q<=D;
			end if;
			end process;
end Behavioral;

