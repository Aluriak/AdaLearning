with Ada.Strings.Unbounded;
limited with Games_Of_Life;

package World_Visitors is
        type World_Visitor_Type is abstract tagged private;
        type World_Visitor is access all World_Visitor_Type'Class;
        package US renames Ada.Strings.Unbounded;

        function  Init return World_Visitor is abstract;
        procedure Visite_World(Visitor : World_Visitor_Type;
                               Gol     : in out Games_Of_Life.Game_Of_Life) is abstract;
        function  getName(Self : World_Visitor_Type) return US.Unbounded_String is abstract;
private
        type World_Visitor_Type is abstract tagged null record;
end World_Visitors;
