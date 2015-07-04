with Ada.Calendar;
with Priority_Queues;
with Abstract_Commands;


package Command_Invokers is
    type Command_Invoker_Type is tagged private;
    type Command_Invoker is access Command_Invoker_Type'Class;

    function  Create return Command_Invoker;
    procedure Run (Self : Command_Invoker_Type);
    procedure Add_Command (Self     : Command_Invoker_Type;
                           New_Item : Abstract_Commands.Abstract_Command);
private
    type Command_Invoker_Type is tagged record
        Queue : Priority_Queues.Command_Queue;
    end record;
end Command_Invokers;



