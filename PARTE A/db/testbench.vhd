--MV 18/10 16:15hs
library ieee;
use ieee.std_logic_1164.all;

entity CIRCUITO_COMBINACIONAL is
	port(	a: in std_logic;
			b: in std_logic;
			ci: in std_logic;
			s:	out std_logic;
			co: out std_logic);
end CIRCUITO_COMBINACIONAL;

--descripción concurrente...
architecture comportamiento of CIRCUITO_COMBINACIONAL is 
begin
	ut;
	s <= '1' when (a xor b xor ci)='1' else '0';
--deducido de un mapa-k...
	co <= '1' when ((a and b) or (ci and b) or (a and ci))='1' else '0';
--deducido de un mapa-k...
end comportamiento;