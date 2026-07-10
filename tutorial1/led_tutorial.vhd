library ieee;
use ieee.std_logic_1164.all;


entity led_tutorial is
    port (
        SW  : in  std_logic;
        LEDR : out std_logic
    );
end entity;

architecture rtl of led_tutorial is
begin
    LEDR <= SW;
end architecture;
