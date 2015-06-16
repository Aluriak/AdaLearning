with Ada.Containers.Vectors;
with Ada.Strings.Unbounded;
with World_Visitors;
with Games_Of_Life;

package Step_Visitors is
        type Step_Visitor_Type is new World_Visitors.World_Visitor_Type with private;
        type Step_Visitor is access all Step_Visitor_Type'Class;
        package Integer_Vector is new Ada.Containers.Vectors(Natural, Natural);
        package US renames Ada.Strings.Unbounded;

        function  Init(B, S, Name : String) return World_Visitors.World_Visitor;
        procedure Visite_World(Self : Step_Visitor_Type;
                               Gol  : in out Games_Of_Life.Game_Of_Life);
        function  getName(Self : Step_Visitor_Type) return US.Unbounded_String;
private
        type Step_Visitor_Type is new World_Visitors.World_Visitor_Type with
        record
                -- A Visitor define BS factors of the Golly/RLE format
                --   see https://en.wikipedia.org/wiki/Life-like_cellular_automaton#Notation_for_rules
                B : Integer_Vector.Vector; -- B factor; values that lead to a Birth
                S : Integer_Vector.Vector; -- S factor; values that lead to Survival
                Name : US.Unbounded_String;
        end record;
end Step_Visitors;

