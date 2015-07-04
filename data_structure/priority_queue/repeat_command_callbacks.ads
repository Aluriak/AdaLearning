with Ada.Strings.Unbounded;
with Abstract_Commands;
with Print_Commands;
with Command_Receptors;

package Repeat_Command_Callbacks is
    package US renames Ada.Strings.Unbounded;

    function PrintA_Builder (i : Integer ; Target : Command_Receptors.Command_Receptor)
                            return Abstract_Commands.Abstract_Command;
    function PrintB_Builder (i : Integer ; Target : Command_Receptors.Command_Receptor)
                            return Abstract_Commands.Abstract_Command;


end Repeat_Command_Callbacks;
