package Abstract_States is
        type Abstract_State_Type is abstract tagged private;
        type Abstract_State is access all Abstract_State_Type'Class;

        function To_Character(State : Abstract_State_Type) return Character is abstract;
private
        type Abstract_State_Type is abstract tagged null record;
end Abstract_States;
