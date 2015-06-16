with Ada.Text_IO;
with Abstract_States;
with Alive_States;

procedure Test_States is 
        package IO renames Ada.Text_IO;
        s : Abstract_States.Abstract_State;
        c : Character;
begin
        s := new Alive_States.Alive_State_Type;
        --c := Abstract_States.To_Character(s.all);
        c := s.To_Character;
        IO.Put_Line(c & "");
end Test_States;
