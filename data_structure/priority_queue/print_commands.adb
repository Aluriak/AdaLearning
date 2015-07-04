with Ada.Text_IO;
with Ada.Strings.Unbounded;
with Command_Receptors;
with Abstract_Commands;

package body Print_Commands is

    procedure Execute (Self : Print_Command_Type) is
    begin
        Self.Receptor.Speak(Self.Message);
    end Execute;

    function Create (Message    : US.Unbounded_String ;
                     Time_Shift : Duration ;
                     Target : Command_Receptors.Command_Receptor) return Abstract_Command is
        Self : Abstract_Command := new Print_Command_Type'(
            Abstract_Command_Type with Message => Message
        );
    begin
        Self.Init(Time_Shift => Time_Shift, Target => Target);
        return Self;
    end Create;

end Print_Commands;
