with Ada.Strings.Unbounded;
with Abstract_Commands;
with Command_Receptors;

package Repeat_Commands is
    package US renames Ada.Strings.Unbounded;
    use Abstract_Commands;

    type Repeat_Command_Type is new Abstract_Command_Type with private;
    type Repeat_Command is access Repeat_Command_Type'Class;
    type Callback is access function (i : Integer) return Abstract_Command;

    procedure Execute (Self    : Repeat_Command_Type);
    function  Create  (Constructor : Callback ; Time_Shift : Duration ; Target : Command_Receptors.Command_Receptor) return Abstract_Command;

private
    type Repeat_Command_Type is new Abstract_Command_Type with record
        Constructor : Callback;
    end record;

end Repeat_Commands;
