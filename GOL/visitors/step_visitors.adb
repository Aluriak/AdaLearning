with World_Visitors;
with Games_Of_Life;
with Switch_State_Actions; 
with Alive_Cell_States;    
with Dead_Cell_States;     

package body Step_Visitors is

        function Init(B, S, Name : String) return World_Visitors.World_Visitor is
                Object : Step_Visitor := new Step_Visitor_Type;
        begin
                for X of B loop
                        Object.B.Append(Integer'Value(X & ""));
                end loop;
                for Y of S loop
                        Object.S.Append(Integer'Value(Y & ""));
                end loop;
                Object.Name := US.To_Unbounded_String(Name);
                return World_Visitors.World_Visitor(Object);
        end;

        procedure Visite_World(Self : Step_Visitor_Type; Gol : in out Games_Of_Life.Game_Of_Life) is
                Neighbors : Natural := 0;
        begin
                for Row in 1..Gol.Row_Size loop
                        for Col in 1..Gol.Col_Size loop
                                Neighbors := Gol.Alive_Neighbors(Row, Col);
                                if Self.B.Contains(Neighbors) then
                                        Gol.Add_Action(Switch_State_Actions.Init(
                                                        Gol.StateAt(Row, Col), 
                                                        Alive_Cell_States.Instance, 
                                                        Row, Col
                                                        ));
                                elsif not Self.S.Contains(Neighbors) then
                                        Gol.Add_Action(Switch_State_Actions.Init(
                                                        Gol.StateAt(Row, Col), 
                                                        Dead_Cell_States.Instance, 
                                                        Row, Col
                                                        ));
                                end if;
                        end loop;
                end loop;
        end Visite_World;

        function  GetName(Self : Step_Visitor_Type) return US.Unbounded_String is
        begin
                return Self.Name;
        end GetName;


end Step_Visitors;
