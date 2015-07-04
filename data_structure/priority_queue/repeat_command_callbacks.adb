with Abstract_Commands;
with Print_Commands;

package body Repeat_Command_Callbacks is

    function PrintA_Builder (i : Integer ; Target : Command_Receptors.Command_Receptor)
                            return Abstract_Commands.Abstract_Command is
    begin
        return Print_Commands.Create(US.To_Unbounded_String("Action A" & Integer'Image(I)), Duration(I), Target);
    end PrintA_Builder;

    function PrintB_Builder(i : Integer ; Target : Command_Receptors.Command_Receptor)
                            return Abstract_Commands.Abstract_Command is
    begin
        return Print_Commands.Create(US.To_Unbounded_String("Action B" & Integer'Image(I)), Duration(I), Target);
    end PrintB_Builder;

end Repeat_Command_Callbacks;
