library ieee;
use ieee.std_logic_1164.all;

entity tb_LogicFunction is
end tb_LogicFunction;

architecture tb of tb_LogicFunction is

    component LogicFunction
        port (A : in std_logic;
              B : in std_logic;
              C : in std_logic;
              D : in std_logic;
              Y : out std_logic);
    end component;

    signal A : std_logic;
    signal B : std_logic;
    signal C : std_logic;
    signal D : std_logic;
    signal Y : std_logic;

begin

    dut : LogicFunction
    port map (A => A,
              B => B,
              C => C,
              D => D,
              Y => Y);

    stimuli : process
    begin
        --TEIL 1
        D <= '0';
        C <= '0';
        B <= '0';
        A <= '0';
        wait for 10 ns;
        
        D <= '1';
        wait for 10 ns;
        
        D <= '0';
        C <= '1';
        wait for 10 ns;
        
        D <= '1';
        wait for 10 ns;
        
        D <= '0';
        C <= '0';
        B <= '1';
        wait for 10 ns;
        
        D <= '1';
        wait for 10 ns;
        
        D <= '0';
        C <= '1';
        wait for 10 ns;
        
        D <= '1';
        wait for 10 ns;
        
        --TEIL 2
        
        D <= '1';
        C <= '0';
        B <= '0';
        A <= '1';
        wait for 10 ns;
                
        D <= '0';
        wait for 10 ns;
                
        D <= '1';
        C <= '1';
        wait for 10 ns;
                
        D <= '0';
        wait for 10 ns;
                
        D <= '1';
        C <= '0';
        B <= '1';
        wait for 10 ns;
                
        D <= '0';
        wait for 10 ns;
                
        D <= '1';
        C <= '1';
        wait for 10 ns;
                
        D <= '0';
        wait for 10 ns;
        
        wait;
    end process;

end tb;

configuration cfg_tb_LogicFunction of tb_LogicFunction is
    for tb
    end for;
end cfg_tb_LogicFunction;
