library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity ShiftRegisterN is
		generic(size : positive := 9);
		port(dataIn : in std_logic_vector(size-1 downto 0);
			  dataOut: out std_logic_vector(size-2 downto 0));
			
end ShiftRegisterN;

architecture structure of ShiftRegisterN is
	signal s_shiftReg : std_logic_vector(size-1 downto 0);

begin
	s_shiftReg(size-2 downto 0) <= dataIn(size-2 downto 0);
	dataOut <= s_shiftReg(size-2 downto 0);
	
end structure;