with Ada.Calendar;


package body Priority_Queues is

    function Get_Priority (Element : Abstract_Command) return Ada.Calendar.Time is
    begin
        return Element.Call_Time;
    end Get_Priority;

    function Before (Left, Right : Ada.Calendar.Time) return Boolean is
        use Ada.Calendar;
    begin
        return Left < Right;
    end Before;

    procedure Run is
    begin
        null;
    end Run;
end Priority_Queues;
