with Ada.Text_IO;
with Ada.Strings.Unbounded;
with Command_Receptors;
with Command_Invokers;
with Abstract_Commands;

package body Repeat_Commands is

    procedure Execute (Self : Repeat_Command_Type) is
    begin
        for I in 1..5 loop
            Self.Invoker.Add_Command(Self.Constructor.all(
                I => I,
                Target => Self.Receptor));
        end loop;
        Self.Invoker.Add_Command(Repeat_Commands.Create(
            Self.Constructor, Self.Invoker, 5.0, Self.Receptor));
    end Execute;

    function Create (Constructor : in not null Callback ;
                     Invoker     : Command_Invokers.Command_Invoker ;
                     Time_Shift  : Duration ;
                     Target      : Command_Receptors.Command_Receptor)
                     return Abstract_Command is
        Self : Abstract_Command := new Repeat_Command_Type'(
            Abstract_Command_Type with Constructor => Constructor,
                                       Invoker     => Invoker
        );
    begin
        Self.Init(Time_Shift => Time_Shift, Target => Target);
        return Self;
    end Create;

    function Command_Builder (i : Integer ; Target : Command_Receptors.Command_Receptor)
                             return Abstract_Commands.Abstract_Command is
    begin
        return Print_Commands.Create(US.To_Unbounded_String("Generated" & Integer'Image(I)), Duration(I), Target);
    end Command_Builder;
end Repeat_Commands;
