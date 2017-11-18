LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY CRC IS
  PORT (a: IN STD_LOGIC_VECTOR(15 DOWNTO 0);
		  error: OUT STD_LOGIC_VECTOR(7 DOWNTO 0));
END CRC;

ARCHITECTURE structure OF CRC IS
SIGNAL signal_r: STD_LOGIC_VECTOR(7 DOWNTO 0);
BEGIN
	encoder: entity work.encoder(structure)
				port map(a => a,
							r => signal_r);
							
	checker: entity work.checker(structure)
				port map(a => a,
							r => signal_r,
							error => error);
END structure;