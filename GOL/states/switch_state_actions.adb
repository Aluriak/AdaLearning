with Abstract_Cell_States;
use  Abstract_Cell_States;
with Alive_Cell_States;
with Dead_Cell_States;
with Games_Of_Life;

package body Switch_State_Actions is
        function  Init   (Old_State, New_State : Abstract_Cell_States.Abstract_Cell_State;
                          Row, Col : Natural) return Switch_State_Action is
        begin
                return new Switch_State_Action_Type'(Old_State, New_State, Row, Col);
        end Init;

        procedure Execute(Self : Switch_State_Action_Type; Gol : in out Games_Of_Life.Game_Of_Life) is
        begin
                pragma Assert(Gol.StateAt(Self.Row, Self.Col) = Self.Old_State);
                Gol.StateAt(Self.Row, Self.Col, Set_To => Self.New_State);
        end Execute;

        procedure Undo   (Self : Switch_State_Action_Type; Gol : in out Games_Of_Life.Game_Of_Life) is
        begin
                pragma Assert(Gol.StateAt(Self.Row, Self.Col) = Self.New_State);
                Gol.StateAt(Self.Row, Self.Col, Set_To => Self.Old_State);
        end Undo;
end Switch_State_Actions;
