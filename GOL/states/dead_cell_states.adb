with Ada.Text_IO;

package body Dead_Cell_States is
        package IO renames Ada.Text_IO;

        -- PUBLIC METHODS
        procedure PrintState is
        begin
                IO.Put("Dead_Cell_States");
        end PrintState;

        procedure AcceptVisitor is
        begin
                null;
        end AcceptVisitor;

        function To_Character(state : Dead_Cell_State_Type) return Character is
        begin
                return ' ';
        end To_Character;

        function Is_Alive(state : Dead_Cell_State_Type) return Boolean is
        begin
                return false;
        end Is_Alive;

        -- ACCESSORS
        function  Instance return Abstract_Cell_State is
        begin
                return new Dead_Cell_State_Type;
        end Instance;
end Dead_Cell_States;
