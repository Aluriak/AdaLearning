with Ada.Containers.Vectors;
with abstract_cell_states;
use  abstract_cell_states;
with Switch_State_Actions;
with World_Visitors;

package Games_Of_Life is
        type Game_Of_Life_Type (Row_Size, Col_Size : Natural) is tagged private;
        type Game_Of_Life is access all Game_Of_Life_Type'Class;
        subtype Density is Float range 0.0..1.0;
        package Neighbors is new Ada.Containers.Vectors(Natural, Abstract_Cell_State);

        -- CONSTRUCTORS
        function Init(Row_Size, Col_Size : Natural; d : Density;
                      v : World_Visitors.World_Visitor) return Game_Of_Life;
        -- METHODS
        procedure Step (Gol : in out Game_Of_Life_Type);
        procedure Print(Gol : in     Game_Of_Life_Type);
        procedure Add_Action(Gol : in out Game_Of_Life_Type; Action : Switch_State_Actions.Switch_State_Action);
        procedure Invoke_Actions(Gol : in out Game_Of_Life_Type);
        -- PREDICATS
        function  ValidCoordinates(gol : Game_Of_Life_Type; Row, Col : Natural) return Boolean;
        -- ACCESSORS
        function  StateAt(gol : in  Game_Of_Life_Type; Row, Col : Natural) return Abstract_Cell_State;
        procedure StateAt(gol : out Game_Of_Life_Type; Row, Col : Natural; Set_To : Abstract_Cell_State);
        function  Alive_Neighbors (gol : Game_Of_Life_Type; Row, Col : Natural) return Natural;
        function  GetVisitor(gol : in out Game_Of_Life_Type) return World_Visitors.World_Visitor;
        procedure SetVisitor(gol : out Game_Of_Life_Type; v : World_Visitors.World_Visitor);
private
        package Actions_Vector is new Ada.Containers.Vectors(Natural,
                                                             Switch_State_Actions.Switch_State_Action,
                                                             "=" => Switch_State_Actions."="
                                                            );
        type World_Array is array (Natural range <>, Natural range <>) of Abstract_Cell_State;
        type Game_Of_Life_Type (Row_Size, Col_Size : Natural) is tagged record
                World   : World_Array (1..Row_Size, 1..Col_Size) := (others => (others => null));
                Actions : Actions_Vector.Vector;
                Visitor : World_Visitors.World_Visitor;
        end record;
end Games_Of_Life;
