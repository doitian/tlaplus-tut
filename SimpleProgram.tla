--------------------------- MODULE SimpleProgram ---------------------------

EXTENDS Integers
VARIABLES i, pc   

Init == (pc = "start") /\ (i = 0)

Pick == /\ pc = "start"  
        /\ i' \in 0..1000
        /\ pc' = "middle"

Add1 == /\ pc = "middle" 
        /\ i' = i + 1
        /\ pc' = "done"  
           
Next == Pick \/ Add1

=============================================================================
\* Modification History
\* Last modified Wed Sep 02 08:59:37 CST 2020 by me
\* Created Wed Sep 02 08:58:46 CST 2020 by me
