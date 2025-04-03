library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity LogicFunction is
        Port (  A: in STD_LOGIC;
                B: in STD_LOGIC;
                C: in STD_LOGIC;
                D: in STD_LOGIC;
                Y: out STD_LOGIC);
                

end LogicFunction;

architecture Behavioral of LogicFunction is

begin
        
                Y <= (NOT (A AND B)) OR (NOT (C AND D));

end Behavioral;
