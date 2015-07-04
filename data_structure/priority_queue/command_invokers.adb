with Ada.Calendar;
with Ada.Containers;
with Ada.Text_IO;
with Abstract_Commands;
with Priority_Queues;

package body Command_Invokers is
    use Ada.Containers;
    procedure Run (Self : Command_Invoker_Type) is
        Next_Command    : Abstract_Commands.Abstract_Command;
        Dequeue_Success : Boolean := False;
    begin
        while Self.Queue.Current_Use > 0  loop
            Self.Queue.Dequeue_Only_High_Priority(At_Least => Ada.Calendar.Clock,
                                                  Element  => Next_Command,
                                                  Success  => Dequeue_Success);
            if Dequeue_Success then
                Next_Command.Execute;
            end if;

            delay 0.01;
        end loop;
    end Run;

    function  Create return Command_Invoker is
        Invoker : Command_Invoker := new Command_Invoker_Type;
    begin
        Invoker.Queue := new Priority_Queues.Command_Queue_Type;
        return Invoker;
    end Create;

    procedure Add_Command (Self     : Command_Invoker_Type;
                           New_Item : Abstract_Commands.Abstract_Command) is
    begin
        Self.Queue.Enqueue(New_Item => New_Item);
    end Add_Command;
end Command_Invokers;


