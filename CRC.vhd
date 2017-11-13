LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY CRC IS
  PORT (a: IN STD_LOGIC_VECTOR(15 DOWNTO 0);
        r: OUT STD_LOGIC_VECTOR(7 DOWNTO 0));
END CRC;

ARCHITECTURE structure OF CRC IS
SIGNAL xorOut: STD_LOGIC;

BEGIN

	blk0: entity work.XorModule PORT MAP (a(15), '1', xorOut);
--	shift0: entity work.ShiftRegisterN PORT MAP (a(15), '1', xorOut);

	blk8: entity work.XorModule PORT MAP (xorOut, '1', xorOut);
	blk7: entity work.XorModule PORT MAP (xorOut, '1', xorOut);
	blk6: entity work.XorModule PORT MAP (xorOut, '1', xorOut);
	blk4: entity work.XorModule PORT MAP (xorOut, '1', xorOut);
	blk2: entity work.XorModule PORT MAP (xorOut, '1', xorOut);
  
END structure;