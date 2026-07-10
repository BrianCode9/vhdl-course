library ieee;
use ieee.std_logic_1164.all;

entity led_tutorial2_tb is
end entity;

architecture sim of led_tutorial2_tb is

    component led_tutorial2
        port (
            SW   : in  std_logic_vector(2 downto 0);
            LEDR : out std_logic_vector(2 downto 0)
        );
    end component;

    signal SW_tb   : std_logic_vector(2 downto 0);
    signal LEDR_tb : std_logic_vector(2 downto 0);

begin

    uut : led_tutorial2
        port map (
            SW   => SW_tb,
            LEDR => LEDR_tb
        );

    stim_proc : process
    begin
        SW_tb <= "000";
        wait for 10 ns;
        SW_tb <= "001";
        wait for 10 ns;
        SW_tb <= "010";
        wait for 10 ns;
        SW_tb <= "101";
        wait for 10 ns;
        SW_tb <= "111";
        wait for 10 ns;

        wait;  -- end simulation
    end process;

end architecture;