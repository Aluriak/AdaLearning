with Ada.Text_IO;
with Ada.Strings.Unbounded;

package Command_Receptors is
    package US renames Ada.Strings.Unbounded;

    type Command_Receptor_Type is tagged private;
    type Command_Receptor is access Command_Receptor_Type;

    function  Create (Header  : US.Unbounded_String := US.To_Unbounded_String("Well, "))
                      return Command_Receptor;
    procedure Speak  (Self : Command_Receptor_Type ; Words : US.Unbounded_String);

private
    type Command_Receptor_Type is tagged record
        Header  : US.Unbounded_String;
    end record;

end Command_Receptors;
