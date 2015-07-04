with Ada.Containers.Synchronized_Queue_Interfaces;
with Ada.Containers.Unbounded_Priority_Queues;
with Ada.Calendar;
with Ada.Strings.Unbounded;


package Priority_Queue is
   type Queue_Element is record
      Call_Time : Time := Ada.Calendar.Clock();
      Action    : Unbounded_String;
   end record;
end;
