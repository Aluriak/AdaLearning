with Abstract_Cell_States;
with Alive_Cell_States;
with Dead_Cell_States;
limited with Games_Of_Life;

package Switch_State_Actions is
        type Switch_State_Action_Type is tagged private;
        type Switch_State_Action is access Switch_State_Action_Type;

        function  Init   (Old_State, New_State : Abstract_Cell_States.Abstract_Cell_State;
                          Row, Col :Natural) return Switch_State_Action;
        procedure Execute(Self : Switch_State_Action_Type; Gol : in out Games_Of_Life.Game_Of_Life);
        procedure Undo   (Self : Switch_State_Action_Type; Gol : in out Games_Of_Life.Game_Of_Life);
private
        type Switch_State_Action_Type is tagged
        record
                Old_State, New_State : Abstract_Cell_States.Abstract_Cell_State;
                Row, Col : Natural;
        end record;
end Switch_State_Actions;
