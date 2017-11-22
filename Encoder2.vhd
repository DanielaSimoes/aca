LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY Encoder2 IS
  PORT (a: IN STD_LOGIC_VECTOR(15 DOWNTO 0);
        r: OUT STD_LOGIC_VECTOR(7 DOWNTO 0));
END Encoder2;

ARCHITECTURE structure OF Encoder2 IS
SIGNAL xorOut: STD_LOGIC_VECTOR(8 DOWNTO 0);
BEGIN
process(a)

	xorOut: entity work.XorModule(structure)
				port map(a => a(15 downto 7),
							b => '111010101',
							s => xorOut);
	
	if xorOut(8) == '0' then			
		xorOut1: entity work.XorModule(structure)
					port map(a => xorOut(7 downto 0) & a(6),
								b => '111010101',
								s => xorOut);
	end if;
	
	if xorOut(8) == '0' and xorOut(8) == '0' then	
	xorOut1: entity work.XorModule(structure)
				port map(a => xorOut(7 downto 0) & a(5),
							b => '111010101',
							s => xorOut);
	end if;
							
	xorOut2: entity work.XorModule(structure)
				port map(a => xorOut(7 downto 0) & a(4),
							b => '111010101',
							s => xorOut);
							
	xorOut3: entity work.XorModule(structure)
				port map(a => xorOut(7 downto 0) & a(3),
							b => '111010101',
							s => xorOut);
							
	xorOut4: entity work.XorModule(structure)
				port map(a => xorOut(7 downto 0) & a(2),
							b => '111010101',
							s => xorOut);
							
	xorOut5: entity work.XorModule(structure)
				port map(a => xorOut(7 downto 0) & a(1),
							b => '111010101',
							s => xorOut);
							
	xorOut6: entity work.XorModule(structure)
				port map(a => xorOut(7 downto 0) & a(0),
							b => '111010101',
							s => xorOut);
	
end process;
END structure;