with Ada.Calendar;
with Command_Receptors;

package body Abstract_Commands is
    function Receptor (Command : Abstract_Command_Type) return Command_Receptors.Command_Receptor is
    begin
        return Command.Receptor;
    end;
    function Call_Time (Command : Abstract_Command_Type) return Ada.Calendar.Time is
    begin
        return Command.Call_Time;
    end;

    procedure Init (Command    : in out Abstract_Command_Type ;
                    Time_Shift : Duration ;
                    Target     : Command_Receptors.Command_Receptor) is
        use Ada.Calendar;
    begin
        Command.Receptor  := Target;
        Command.Call_Time := Ada.Calendar.Clock + Time_Shift;
    end Init;


end Abstract_Commands;
