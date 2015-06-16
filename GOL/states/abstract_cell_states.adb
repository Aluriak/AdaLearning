with Ada.Text_IO;
with Games_Of_Life;

package body Abstract_Cell_States is
        package IO renames Ada.Text_IO;

        procedure PrintState is
        begin
                IO.Put("Abstract_Cell_States");
        end PrintState;
end Abstract_Cell_States;
