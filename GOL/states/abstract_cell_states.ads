package Abstract_Cell_States is
        type Abstract_Cell_State_Type is abstract tagged private;
        type Abstract_Cell_State is access Abstract_Cell_State_Type'Class;

        -- PUBLIC METHODS
        procedure PrintState;

        -- ABSTRACT METHODS
        --procedure AcceptVisitor is abstract;
        function  To_Character(state : Abstract_Cell_State_Type) return Character is abstract;
        function  Is_Alive(state : Abstract_Cell_State_Type) return Boolean is abstract;

        -- ACCESSORS
        function  Instance return Abstract_Cell_State is abstract;
private
        type Abstract_Cell_State_Type is abstract tagged null record;
end Abstract_Cell_States;
