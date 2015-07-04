with Ada.Text_IO;
with Ada.Strings.Unbounded;

package body Command_Receptors is
    function  Create (Header : US.Unbounded_String := US.To_Unbounded_String("Well, ")) return Command_Receptor is
    begin
        return new Command_Receptor_Type'(Header => Header);
    end Create;

    procedure Speak (Self : Command_Receptor_Type ; Words : US.Unbounded_String) is
    begin
        Ada.Text_IO.Put(US.To_String(Self.Header) & US.To_String(Words));
        Ada.Text_IO.New_Line;
    end Speak;
end;
