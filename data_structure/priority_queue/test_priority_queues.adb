with Ada.Calendar;
with Ada.Strings.Unbounded;

with Abstract_Commands;
with Command_Receptors;
with Command_Invokers;
with Print_Commands;

procedure Test_Priority_Queues is
    use Ada.Calendar;
    use Ada.Strings.Unbounded;
    Target  : Command_Receptors.Command_Receptor := Command_Receptors.Create(To_Unbounded_String("Performing "));
    Invoker : Command_Invokers.Command_Invoker   := Command_Invokers.Create;
    function Command_Builder (i : Integer, Target : Command_Receptors.Command_Receptor) return Abstract_Commands.Abstract_Command is
    begin
        return Print_Commands.Create(To_Unbounded_String("Generated" & Integer'Image(I)), Duration(I), Target);
    end Command_Builder;
begin
    for I in reverse 1..5 loop
        Invoker.Add_Command(New_Item => Print_Commands.Create(To_Unbounded_String("Action" & Integer'Image(I)), Duration(I), Target));
    end loop;
    Invoker.Run;
end;
