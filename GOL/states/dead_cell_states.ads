with abstract_cell_states; use abstract_cell_states;

package Dead_Cell_States is
        type Dead_Cell_State_Type is new Abstract_Cell_State_Type with private;
        type Dead_Cell_State is access Dead_Cell_State_Type'Class;

        -- PUBLIC METHODS
        procedure PrintState;
        procedure AcceptVisitor;
        function  To_Character(state : Dead_Cell_State_Type) return Character;
        function  Is_Alive(state : Dead_Cell_State_Type) return Boolean;

        -- ACCESSORS
        function  Instance return Abstract_Cell_State;
private
        type Dead_Cell_State_Type is new Abstract_Cell_State_Type with null record;
end Dead_Cell_States;
