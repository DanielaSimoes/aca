library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity XorModule is 
 port(a : in STD_LOGIC_VECTOR(8 DOWNTO 0);
 		  b : in STD_LOGIC_VECTOR(8 DOWNTO 0);
 		  s : out STD_LOGIC_VECTOR(8 DOWNTO 0));
 end XorModule;
 
architecture structure of XorModule is 
begin
 s <= a xor b;
end structure;