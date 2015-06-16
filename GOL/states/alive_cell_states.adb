with Ada.Text_IO;

package body Alive_Cell_States is
        package IO renames Ada.Text_IO;

        -- PUBLIC METHODS
        procedure PrintState is
        begin
                IO.Put("Alive_Cell_States");
        end PrintState;

        procedure AcceptVisitor is
        begin
                null;
        end AcceptVisitor;

        function To_Character(state : Alive_Cell_State_Type) return Character is
        begin
                return 'X';
        end To_Character;

        function Is_Alive(state : Alive_Cell_State_Type) return Boolean is
        begin
                return true;
        end Is_Alive;

        -- ACCESSORS
        function  Instance return Abstract_Cell_State is
        begin
                return new Alive_Cell_State_Type;
        end Instance;
end Alive_Cell_States;
