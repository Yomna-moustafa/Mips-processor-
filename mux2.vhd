----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    02:00:22 05/12/2022 
-- Design Name: 
-- Module Name:    hrh - Behavioral 
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

entity mux2 is
generic(n: natural :=32);
    Port ( a : in  STD_LOGIC_vector(n-1 downto 0);
           b : in  STD_LOGIC_vector(n-1 downto 0);
           sel : in  STD_LOGIC;
           y : out  STD_LOGIC_vector(n-1 downto 0);
end mux2;

architecture Behavioral of mux2 is

begin

y<= a when sel<='1' else b;
end Behavioral;

