Library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

Entity soma is
	PORT(	CLK:		IN std_logic;
			RST:		IN std_logic;
			VALUE1:	IN std_logic_vector (31 downto 0);
			VALUE2:	IN std_logic_vector (31 downto 0);
			RESULT:	OUT std_logic_vector (31 downto 0));
end entity;

Architecture a_soma of soma is
signal sign_v1, sign_v2, sign_out: std_logic;
signal exponent_v1, exponent_v2, exponent_out: std_logic_vector (7 downto 0);
signal mantissa_v1, mantissa_v2, mantissa_out: std_logic_vector (22 downto 0);
signal out_value: std_logic_vector (31 downto 0);
Begin
	sign_v1 <= VALUE1(31);
	exponent_v1 <= VALUE1(30 downto 23);
	mantissa_v1 <= VALUE1(22 downto 0);
	
	sign_v2 <= VALUE2(31);
	exponent_v2 <= VALUE2(30 downto 23);
	mantissa_v2 <= VALUE2(22 downto 0);
	
	sign_out <= VALUE1(31);
	exponent_out <= VALUE1(30 downto 23);
	mantissa_out <= VALUE1(22 downto 0);
	
	out_value(31) <=	'0' when RST = '0' 	else
							sign_out;
	out_value(30 downto 23) <=	"00000000" when RST = '0' 	else
										exponent_out;
	out_value(22 downto 0) <= 	"00000000000000000000000" when RST = '0' 	else
										mantissa_out;
	RESULT	<= out_value;
	
End architecture;

