----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity multi is -- shift left by 2

port (a: in STD_LOGIC_VECTOR(31 downto 0);
     y: out STD_LOGIC_VECTOR(31 downto 0));
	  
end multi;

architecture Behavioral of multi is

begin

 y <= a(29 downto 0) & "00";

end Behavioral;

