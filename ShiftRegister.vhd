library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity ShiftRegister is
 	generic(size : positive := 16);
 	port(dataIn : in std_logic_vector(size-1 downto 0);
			  dataOut: out std_logic_vector(size-1 downto 0));
 		
end ShiftRegister;

architecture structure of ShiftRegister is
 signal s_shiftReg : std_logic_vector(size-1 downto 0);

begin
	s_shiftreg(size-2 downto 0) <= dataIn(size-1 downto 1);	
	s_shiftReg(size-1) <= '0';
	dataOut <= s_shiftReg(size-1 downto 0);

end structure;