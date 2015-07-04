with Ada.Strings.Unbounded;
with Abstract_Commands;
with Command_Receptors;

package Print_Commands is
    package US renames Ada.Strings.Unbounded;
    use Abstract_Commands;

    type Print_Command_Type is new Abstract_Command_Type with private;
    type Print_Command is access Print_Command_Type'Class;

    procedure Execute (Self    : Print_Command_Type);
    function  Create  (Message : US.Unbounded_String ; Time_Shift : Duration ; Target : Command_Receptors.Command_Receptor) return Abstract_Command;

private
    type Print_Command_Type is new Abstract_Command_Type with record
        Message : US.Unbounded_String;
    end record;

end Print_Commands;
