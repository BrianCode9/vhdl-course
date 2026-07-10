library ieee;
use ieee.std_logic_1164.all;

entity led_tutorial2 is
	port (
		SW : in std_logic_vector(2 downto 0);
		LEDR : out std_logic_vector(2 downto 0)
	
	);
end entity;

architecture rtl2 of led_tutorial2 is
begin
	LEDR <= SW;
end architecture;