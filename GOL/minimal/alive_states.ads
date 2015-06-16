with Abstract_States;
use  Abstract_States;

package Alive_States is
        type Alive_State_Type is new Abstract_State_Type with private;
        type Alive_State is access Alive_State_Type'Class;

        --function To_Character(State : Alive_State) return Character;
        function To_Character(State : Alive_State_Type) return Character;
private
        type Alive_State_Type is new Abstract_State_Type with null record;
end Alive_States;
