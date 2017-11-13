library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity XorModule is 
	port(a : in std_logic;
		  b : in std_logic;
		  s : out std_logic);
end XorModule;

architecture structure of XorModule is 
begin
	s <= a xor b;
end structure;