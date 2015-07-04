with Ada.Calendar;
with Ada.Strings.Unbounded;

with Abstract_Commands;
with Command_Receptors;
with Command_Invokers;
with  Print_Commands;
with Repeat_Commands;
with Repeat_Command_Callbacks;

procedure Test_Priority_Queues is
    package US renames Ada.Strings.Unbounded;
    Invoker : Command_Invokers.Command_Invoker   := Command_Invokers.Create;
    Target  : Command_Receptors.Command_Receptor := Command_Receptors.Create(US.To_Unbounded_String("Performing "));

begin
    for I in reverse 1..10 loop
        Invoker.Add_Command(New_Item => Print_Commands.Create(US.To_Unbounded_String("Initialization" & Integer'Image(I)), Duration(I), Target));
    end loop;
    -- Create two repeaters. Each will call a different callback.
    Invoker.Add_Command(New_Item => Repeat_Commands.Create(Repeat_Command_Callbacks.PrintA_Builder'Access, Invoker, 2.0, Target));
    delay 0.5;
    Invoker.Add_Command(New_Item => Repeat_Commands.Create(Repeat_Command_Callbacks.PrintB_Builder'Access, Invoker, 2.0, Target));
    -- Launch looking-for-command loop.
    Invoker.Run;
end;

