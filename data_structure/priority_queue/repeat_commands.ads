with Ada.Strings.Unbounded;
with Abstract_Commands;
with Command_Receptors;
with Command_Invokers;
with Print_Commands;

package Repeat_Commands is
    package US renames Ada.Strings.Unbounded;
    use Abstract_Commands;

    type Repeat_Command_Type is new Abstract_Command_Type with private;
    type Repeat_Command is access Repeat_Command_Type'Class;
    --type Callback is access procedure (I      : Integer ;
    type Callback is access function (I      : Integer ;
                                      Target : Command_Receptors.Command_Receptor)
                                      return Abstract_Commands.Abstract_Command;

    procedure Execute (Self : Repeat_Command_Type);
    function  Create  (Constructor : in not null Callback ;
                       Invoker     : Command_Invokers.Command_Invoker ;
                       Time_Shift  : Duration ;
                       Target      : Command_Receptors.Command_Receptor)
                       return Abstract_Command;


    function Command_Builder (i : Integer ; Target : Command_Receptors.Command_Receptor)
                             return Abstract_Command;

private
    type Repeat_Command_Type is new Abstract_Command_Type with record
        Constructor : Callback;
        Invoker     : Command_Invokers.Command_Invoker ;
    end record;

end Repeat_Commands;
