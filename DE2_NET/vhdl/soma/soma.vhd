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

Begin
	RESULT	<= x"00000000" when RST = '0' 	else
					VALUE1;
	
End architecture;
