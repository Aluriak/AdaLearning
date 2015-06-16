with Ada.Containers.Vectors;
with Ada.Strings.Unbounded;
with Ada.Text_IO;
with Games_Of_Life;
with World_Visitors;
with Step_Visitors;



procedure Test_Games_Of_Life is
        package US renames Ada.Strings.Unbounded;
        package Visitor_Vectors is new Ada.Containers.Vectors(Natural, World_Visitors.World_Visitor, "=" => World_Visitors."=");

        World_Size_Row : constant Positive := 30;
        World_Size_Col : constant Positive := 80;
        Steps_Count    : constant Positive := 40;
        World_Density  : constant Float    := 0.2;
        Inter_Delay    : constant Float    := 0.1;

        -- GOL and it's visitors
        Visitors : Visitor_Vectors.Vector;
        Gol : Games_Of_Life.Game_Of_Life := Games_Of_Life.Init(World_Size_Row, World_Size_Col, World_Density, null);
        -- running
        procedure Run_GOL(Visitor : World_Visitors.World_Visitor) is
                package IO renames Ada.Text_IO;
        begin
                Gol.SetVisitor(Visitor);
                for i in 1..Steps_Count loop
                        IO.Put(ASCII.ESC & "[2J"); -- clear terminal
                        IO.Put_Line("Run Game Of Life with pattern " & US.To_String(Visitor.getName) & ":");
                        Gol.Print;
                        Gol.Step ;
                        delay Duration(Inter_Delay);
                end loop;
        end Run_GOL;
begin
        -- Create all visitors
        Visitors.Append(Step_Visitors.Init(B => "3"     , S => "23"     , Name => "Conway"      ));
        Visitors.Append(Step_Visitors.Init(B => "2"     , S => ""       , Name => "Seeds"       ));
        Visitors.Append(Step_Visitors.Init(B => "36"    , S => "23"     , Name => "HighLife"    ));
        Visitors.Append(Step_Visitors.Init(B => "35678" , S => "35678"  , Name => "Diamoeba"    ));
        Visitors.Append(Step_Visitors.Init(B => "36"    , S => "125"    , Name => "2x2"         ));
        Visitors.Append(Step_Visitors.Init(B => "3678"  , S => "34678"  , Name => "Day & Night" ));
        Visitors.Append(Step_Visitors.Init(B => "25"    , S => "4"      , Name => "Replicator"  ));
        -- Run them
        for V of Visitors loop
                Run_GOL(V);
        end loop;
end Test_Games_Of_Life;
