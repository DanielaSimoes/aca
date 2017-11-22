LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY Encoder IS
  PORT (a: IN STD_LOGIC_VECTOR(15 DOWNTO 0);
        r: OUT STD_LOGIC_VECTOR(7 DOWNTO 0));
END Encoder;

ARCHITECTURE structure OF Encoder IS
SIGNAL si_xorOut1: STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL si_xorOut2: STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL si_xorOut3: STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL si_xorOut4: STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL si_xorOut5: STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL si_xorOut6: STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL si_xorOut7: STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL si_xorOut8: STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL si_xorOut9: STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL si_xorOut10: STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL si_xorOut11: STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL si_xorOut12: STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL si_xorOut13: STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL si_xorOut14: STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL si_xorOut15: STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL xorOut: STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL temp2: STD_LOGIC;
SIGNAL si_temp21: STD_LOGIC;
SIGNAL si_temp22: STD_LOGIC;
SIGNAL si_temp23: STD_LOGIC;
SIGNAL si_temp24: STD_LOGIC;
SIGNAL si_temp25: STD_LOGIC;
SIGNAL si_temp26: STD_LOGIC;
SIGNAL si_temp27: STD_LOGIC;
SIGNAL si_temp28: STD_LOGIC;
SIGNAL si_temp29: STD_LOGIC;
SIGNAL si_temp210: STD_LOGIC;
SIGNAL si_temp211: STD_LOGIC;
SIGNAL si_temp212: STD_LOGIC;
SIGNAL si_temp213: STD_LOGIC;
SIGNAL si_temp214: STD_LOGIC;
SIGNAL si_temp215: STD_LOGIC;
SIGNAL si_temp216: STD_LOGIC;
BEGIN

	xorOut <= "00000000";
	temp2 <= '0';

	blk0: entity work.EncoderModule(structure)
			port map (a => a(15),
						 in_xorOut => xorOut,
						 temp2_in => temp2,
						 temp2_out => si_temp21,
						 s_xorOut => si_xorOut1);
	
	blk1: entity work.EncoderModule(structure)
			port map (a => a(14),
						 in_xorOut => si_xorOut1,
						 temp2_in => si_temp21,
						 temp2_out => si_temp22,
						 s_xorOut => si_xorOut2);
	
	blk2: entity work.EncoderModule(structure)
			port map (a => a(13),
						 in_xorOut => si_xorOut2,
						  temp2_in => si_temp22,
						 temp2_out => si_temp23,
						 s_xorOut => si_xorOut3);
						 
	blk3: entity work.EncoderModule(structure)
			port map (a => a(12),
						 in_xorOut => si_xorOut3,
						  temp2_in => si_temp23,
						 temp2_out => si_temp24,
						 s_xorOut => si_xorOut4);
						 
	blk4: entity work.EncoderModule(structure)
			port map (a => a(11),
						 in_xorOut => si_xorOut4,
						  temp2_in => si_temp24,
						 temp2_out => si_temp25,
						 s_xorOut => si_xorOut5);
						 
	blk5: entity work.EncoderModule(structure)
			port map (a => a(10),
						 in_xorOut => si_xorOut5,
						  temp2_in => si_temp25,
						 temp2_out => si_temp26,
						 s_xorOut => si_xorOut6);
						 
	blk6: entity work.EncoderModule(structure)
			port map (a => a(9),
						 in_xorOut => si_xorOut6,
						  temp2_in => si_temp26,
						 temp2_out => si_temp27,
						 s_xorOut => si_xorOut7);
						 
	blk7: entity work.EncoderModule(structure)
			port map (a => a(8),
						 in_xorOut => si_xorOut7,
						  temp2_in => si_temp27,
						 temp2_out => si_temp28,
						 s_xorOut => si_xorOut8);
	
	blk8: entity work.EncoderModule(structure)
			port map (a => a(7),
						 in_xorOut => si_xorOut8,
						  temp2_in => si_temp28,
						 temp2_out => si_temp29,
						 s_xorOut => si_xorOut9);

	blk9: entity work.EncoderModule(structure)
			port map (a => a(6),
						 in_xorOut => si_xorOut9,
						  temp2_in => si_temp29,
						 temp2_out => si_temp210,
						 s_xorOut => si_xorOut10);
						 
	blk10: entity work.EncoderModule(structure)
			port map (a => a(5),
						 in_xorOut => si_xorOut10,
						  temp2_in => si_temp210,
						 temp2_out => si_temp211,
						 s_xorOut => si_xorOut11);
						 
	blk11: entity work.EncoderModule(structure)
			port map (a => a(4),
						 in_xorOut => si_xorOut11,
						  temp2_in => si_temp211,
						 temp2_out => si_temp212,
						 s_xorOut => si_xorOut12);
						 
	blk12: entity work.EncoderModule(structure)
			port map (a => a(3),
						 in_xorOut => si_xorOut12,
						  temp2_in => si_temp212,
						 temp2_out => si_temp213,
						 s_xorOut => si_xorOut13);
						 
	blk13: entity work.EncoderModule(structure)
			port map (a => a(2),
						 in_xorOut => si_xorOut13,
						  temp2_in => si_temp213,
						 temp2_out => si_temp214,
						 s_xorOut => si_xorOut14);
						 	 
	blk14: entity work.EncoderModule(structure)
			port map (a => a(1),
						 in_xorOut => si_xorOut14,
						  temp2_in => si_temp214,
						 temp2_out => si_temp215,
						 s_xorOut => si_xorOut15);
						 
	blk15: entity work.EncoderModule(structure)
			port map (a => a(0),
						 in_xorOut => si_xorOut15,
						 temp2_in => si_temp215,
						 temp2_out => si_temp216,
						 s_xorOut => r);
						 
END structure;