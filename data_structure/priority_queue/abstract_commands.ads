with Ada.Calendar;
with Command_Receptors;

package Abstract_Commands is
    type Abstract_Command_Type is abstract tagged private;
    type Abstract_Command is access Abstract_Command_Type'Class;

    procedure Execute  (Command : Abstract_Command_Type) is abstract;
    function Receptor  (Command : Abstract_Command_Type) return Command_Receptors.Command_Receptor;
    function Call_Time (Command : Abstract_Command_Type) return Ada.Calendar.Time;


    procedure Init (Command : in out Abstract_Command_Type ; Time_Shift : Duration ; Target : Command_Receptors.Command_Receptor);

private
    type Abstract_Command_Type is abstract tagged record
        Receptor  : Command_Receptors.Command_Receptor;
        Call_Time : Ada.Calendar.Time;
    end record;

end Abstract_Commands;

