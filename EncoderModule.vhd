library IEEE;
use IEEE.STD_LOGIC_1164.all;

ENTITY EncoderModule IS
  PORT (a: IN STD_LOGIC;
		  in_xorOut: IN STD_LOGIC_VECTOR(7 DOWNTO 0);
		  temp2_in: IN STD_LOGIC;
		  temp2_out: OUT STD_LOGIC;
        s_xorOut: OUT STD_LOGIC_VECTOR(7 DOWNTO 0));
END EncoderModule;
 
architecture structure of EncoderModule is 

begin
process(a, in_xorOut, temp2_in)
variable temp1: STD_LOGIC;
variable temp2: STD_LOGIC;
variable signal_xorOut: STD_LOGIC; 
	begin
		temp1 := in_xorOut(0);
		s_xorOut(0) <= a xor temp2_in;
		signal_xorOut := a xor temp2_in;
		temp2 := in_xorOut(1);
		s_xorOut(1) <= temp1;
		temp1 := in_xorOut(2);
		s_xorOut(2) <= temp2 xor signal_xorOut;
		temp2 := in_xorOut(3);
		s_xorOut(3) <= temp1;
		temp1 := in_xorOut(4);
		s_xorOut(4) <= temp2 xor signal_xorOut;
		temp2 := in_xorOut(5);
		s_xorOut(5) <= temp1;
		temp1 := in_xorOut(6);
		s_xorOut(6) <= temp2 xor signal_xorOut;
		s_xorOut(7) <= temp1 xor signal_xorOut;
		signal_xorOut := temp1 xor signal_xorOut;
		temp2_out <= signal_xorOut;
end process;
end structure;