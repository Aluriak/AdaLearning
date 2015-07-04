with Ada.Containers.Synchronized_Queue_Interfaces;
with Ada.Containers.Unbounded_Priority_Queues;
with Ada.Calendar;
with Ada.Strings.Unbounded;
with Abstract_Commands;


package Priority_Queues is
    use Ada.Containers;
    use Abstract_Commands;

    function Get_Priority (Element : Abstract_Command) return Ada.Calendar.Time;
    function Before (Left, Right : Ada.Calendar.Time) return Boolean;
    procedure Run;

    package Command_Queues is new Synchronized_Queue_Interfaces
        (Element_Type => Abstract_Command);
    package Command_Priority_Queues is new Unbounded_Priority_Queues
        (Queue_Interfaces => Command_Queues,
         Queue_Priority => Ada.Calendar.Time);
    subtype Command_Queue_Type is Command_Priority_Queues.Queue;
    type Command_Queue is access Command_Queue_Type;

end Priority_Queues;
