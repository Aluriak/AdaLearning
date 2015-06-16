with Ada.Text_IO;
with Ada.Numerics.Float_Random;
with Switch_State_Actions;
with Abstract_Cell_States;
with Alive_Cell_States;
with Dead_Cell_States;
with World_Visitors;

package body Games_Of_Life is
        package IO renames Ada.Text_IO;


        function Init(Row_Size, Col_Size : Natural; d : Density;
                      v : World_Visitors.World_Visitor) return Game_Of_Life is
                Gol : Game_Of_Life := new Game_Of_Life_Type(Row_Size => Row_Size, Col_Size => Col_Size);
                Gen : Ada.Numerics.Float_Random.Generator;
        begin
                Gol.Visitor := v;
                for Row in 1..Gol.Row_Size loop
                        for Col in 1..Gol.Col_Size loop
                                if Ada.Numerics.Float_Random.Random(Gen) < d then
                                        Gol.StateAt(
                                                Row, Col,
                                                Set_To => Alive_Cell_States.Instance
                                        );
                                else
                                        Gol.StateAt(
                                                Row, Col,
                                                Set_To => Dead_Cell_States.Instance
                                        );
                                end if;
                        end loop;
                end loop;
                return Gol;
        end Init;



        procedure Step(Gol : in out Game_Of_Life_Type) is
                Gol_ptr : Game_Of_Life := Gol'Unchecked_Access;
        begin
                Gol_ptr.Visitor.Visite_World(Gol_Ptr);
                Gol_Ptr.Invoke_Actions;
        end Step;



        procedure Print(Gol : Game_Of_Life_Type) is
        begin
                for Row in 1..Gol.Row_Size loop
                        for Col in 1..Gol.Col_Size loop
                                IO.Put(Games_Of_Life.StateAt(gol, Row, Col).To_Character);
                        end loop;
                        IO.New_Line;
                end loop;
        end Print;


        procedure Add_Action(Gol : in out Game_Of_Life_Type; Action : Switch_State_Actions.Switch_State_Action) is
                Gol_ptr : Game_Of_Life := Gol'Unchecked_Access;
        begin
                Gol_ptr.Actions.Append(Action);
        end Add_Action;


        procedure Invoke_Actions(Gol : in out Game_Of_Life_Type) is
                Iterator : Actions_Vector.Cursor := Gol.Actions.First;
                Gol_ptr : Game_Of_Life := Gol'Unchecked_Access;
        begin
                while Actions_Vector.Has_Element(Iterator) loop
                        Actions_Vector.Element(Iterator).Execute(Gol_ptr);
                        Actions_Vector.Next(Iterator);
                end loop;
        end Invoke_Actions;



        function ValidCoordinates(gol : Game_Of_Life_Type; Row, Col : Natural) return Boolean is
        begin
                --IO.put_line("ValidCoordinates::" & Natural'Image(Row) & ";" & Natural'Image(Col));
                return 1 <= Row and Row <= gol.Row_Size and 1 <= Col and Col <= gol.Col_Size;
        end ValidCoordinates;



        function StateAt(Gol : in  Game_Of_Life_Type; Row, Col : Natural) return Abstract_Cell_State is
        begin
                if ValidCoordinates(Gol, Row, Col) then
                        return Gol.World(Row, Col);
                else
                        return Dead_Cell_States.Instance;
                end if;
        end StateAt;


        procedure StateAt(gol : out Game_Of_Life_Type; Row, Col : Natural; Set_To : Abstract_Cell_State) is
        begin
                if ValidCoordinates(Gol, Row, Col) then
                        gol.World(Row, Col) := Set_To;
                end if;
        end StateAt;


        function  Alive_Neighbors (gol : Game_Of_Life_Type; Row, Col : Natural) return Natural is
                Counter : Natural := 0;
        begin
                -- walk in all Moore neighbors
                --IO.put_line("Alive_Neighbors::" & Natural'Image(Row) & ";" & Natural'Image(Col));
                for Offset_Row in -1..1 loop
                        for Offset_Col in -1..1 loop
                                if not (Offset_Row = 0 and Offset_Col = 0) then
                                        if gol.StateAt(Row+Offset_Row, Col+Offset_Col).Is_Alive then
                                                Counter := Counter + 1;
                                        end if;
                                end if;
                        end loop;
                end loop;
                return Counter;
        end Alive_Neighbors;

        function  GetVisitor(gol : in out Game_Of_Life_Type) return World_Visitors.World_Visitor is
        begin
                return Gol.Visitor;
        end GetVisitor;

        procedure SetVisitor(gol : out Game_Of_Life_Type; v : World_Visitors.World_Visitor) is
        begin
                Gol.Visitor := v;
        end SetVisitor;


end Games_Of_Life;
