LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY CRC IS
  PORT (a: IN STD_LOGIC_VECTOR(15 DOWNTO 0);
        r: OUT STD_LOGIC_VECTOR(7 DOWNTO 0));
END CRC;

ARCHITECTURE structure OF CRC IS
SIGNAL xorOut: STD_LOGIC_VECTOR(8 DOWNTO 0);
SIGNAL xorOut1: STD_LOGIC_VECTOR(8 DOWNTO 0);
SIGNAL xorOut2: STD_LOGIC_VECTOR(8 DOWNTO 0);
SIGNAL xorOut3: STD_LOGIC_VECTOR(8 DOWNTO 0);
SIGNAL xorOut4: STD_LOGIC_VECTOR(8 DOWNTO 0);
SIGNAL xorOut5: STD_LOGIC_VECTOR(8 DOWNTO 0);
SIGNAL xorOut6: STD_LOGIC_VECTOR(8 DOWNTO 0);
SIGNAL xorOut7: STD_LOGIC_VECTOR(8 DOWNTO 0);
SIGNAL shiftOut1: STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL shiftOut2: STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL shiftOut3: STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL shiftOut4: STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL shiftOut5: STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL shiftOut6: STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL shiftOut7: STD_LOGIC_VECTOR(7 DOWNTO 0);


BEGIN
 process(a)
	begin
		xorOut(8) <= a(15) xor '1';
		xorOut(7) <= a(14) xor '1';
		xorOut(6) <= a(13) xor '1';
		xorOut(5) <= a(12);
		xorOut(4) <= a(11) xor '1';
		xorOut(3) <= a(10);
		xorOut(2) <= a(9) xor '1';
		xorOut(1) <= a(8);
		xorOut(0) <= a(7) xor '1';
 end process;
	shift1: entity work.ShiftRegisterN PORT MAP (xorOut, shiftOut1);
 
 process(a)
	begin
	xorOut1(8) <= shiftOut1(7) xor '1';
	xorOut1(7) <= shiftOut1(6) xor '1';
	xorOut1(6) <= shiftOut1(5) xor '1';
	xorOut1(5) <= shiftOut1(4);
	xorOut1(4) <= shiftOut1(3) xor '1';
	xorOut1(3) <= shiftOut1(2);
	xorOut1(2) <= shiftOut1(1) xor '1';
	xorOut1(1) <= shiftOut1(0);
	xorOut1(0) <= a(6) xor '1';
 end process;
	shift2: entity work.ShiftRegisterN PORT MAP (xorOut1, shiftOut2);

 process(a)
	begin	
	xorOut2(8) <= shiftOut2(7) xor '1';
	xorOut2(7) <= shiftOut2(6) xor '1';
	xorOut2(6) <= shiftOut2(5) xor '1';
	xorOut2(5) <= shiftOut2(4);
	xorOut2(4) <= shiftOut2(3) xor '1';
	xorOut2(3) <= shiftOut2(2);
	xorOut2(2) <= shiftOut2(1) xor '1';
	xorOut2(1) <= shiftOut2(0);
	xorOut2(0) <= a(5) xor '1';
 end process;
	shift3: entity work.ShiftRegisterN PORT MAP (xorOut2, shiftOut3);

 process(a)
	begin	
	xorOut3(8) <= shiftOut3(7) xor '1';
	xorOut3(7) <= shiftOut3(6) xor '1';
	xorOut3(6) <= shiftOut3(5) xor '1';
	xorOut3(5) <= shiftOut3(4);
	xorOut3(4) <= shiftOut3(3) xor '1';
	xorOut3(3) <= shiftOut3(2);
	xorOut3(2) <= shiftOut3(1) xor '1';
	xorOut3(1) <= shiftOut3(0);
	xorOut3(0) <= a(4) xor '1';
 end process;
	shift4: entity work.ShiftRegisterN PORT MAP (xorOut3, shiftOut4);

 process(a)
	begin	
	xorOut4(8) <= shiftOut4(7) xor '1';
	xorOut4(7) <= shiftOut4(6) xor '1';
	xorOut4(6) <= shiftOut4(5) xor '1';
	xorOut4(5) <= shiftOut4(4);
	xorOut4(4) <= shiftOut4(3) xor '1';
	xorOut4(3) <= shiftOut4(2);
	xorOut4(2) <= shiftOut4(1) xor '1';
	xorOut4(1) <= shiftOut4(0);
	xorOut4(0) <= a(3) xor '1';
 end process;
	shift5: entity work.ShiftRegisterN PORT MAP (xorOut4, shiftOut5);

 process(a)
	begin	
	xorOut5(8) <= shiftOut5(7) xor '1';
	xorOut5(7) <= shiftOut5(6) xor '1';
	xorOut5(6) <= shiftOut5(5) xor '1';
	xorOut5(5) <= shiftOut5(4);
	xorOut5(4) <= shiftOut5(3) xor '1';
	xorOut5(3) <= shiftOut5(2);
	xorOut5(2) <= shiftOut5(1) xor '1';
	xorOut5(1) <= shiftOut5(0);
	xorOut5(0) <= a(2) xor '1';
 end process;
	shift6: entity work.ShiftRegisterN PORT MAP (xorOut5, shiftOut6);

 process(a)
	begin	
	xorOut6(8) <= shiftOut6(7) xor '1';
	xorOut6(7) <= shiftOut6(6) xor '1';
	xorOut6(6) <= shiftOut6(5) xor '1';
	xorOut6(5) <= shiftOut6(4);
	xorOut6(4) <= shiftOut6(3) xor '1';
	xorOut6(3) <= shiftOut6(2);
	xorOut6(2) <= shiftOut6(1) xor '1';
	xorOut6(1) <= shiftOut6(0);
	xorOut6(0) <= a(1) xor '1';
 end process;
	shift7: entity work.ShiftRegisterN PORT MAP (xorOut6, shiftOut7);

 process(a)
	begin	
	xorOut7(8) <= shiftOut7(7) xor '1';
	xorOut7(7) <= shiftOut7(6) xor '1';
	xorOut7(6) <= shiftOut7(5) xor '1';
	xorOut7(5) <= shiftOut7(4);
	xorOut7(4) <= shiftOut7(3) xor '1';
	xorOut7(3) <= shiftOut7(2);
	xorOut7(2) <= shiftOut7(1) xor '1';
	xorOut7(1) <= shiftOut7(0);
	xorOut7(0) <= a(0) xor '1';
 end process;
	shift8: entity work.ShiftRegisterN PORT MAP (xorOut7, r);
  
END structure;