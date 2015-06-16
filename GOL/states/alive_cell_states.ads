with abstract_cell_states; use abstract_cell_states;

package Alive_Cell_States is
        type Alive_Cell_State_Type is new Abstract_Cell_State_Type with private;
        type Alive_Cell_State is access Alive_Cell_State_Type'Class;

        -- PUBLIC METHODS
        procedure PrintState;
        procedure AcceptVisitor;
        function  To_Character(state : Alive_Cell_State_Type) return Character;
        function  Is_Alive(state : Alive_Cell_State_Type) return Boolean;

        -- ACCESSORS
        function  Instance return Abstract_Cell_State;
private
        type Alive_Cell_State_Type is new Abstract_Cell_State_Type with null record;
end Alive_Cell_States;
