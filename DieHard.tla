------------------------------ MODULE DieHard ------------------------------
EXTENDS Integers
VARIABLES small, big

TypeOK == /\ small \in 0 .. 3
          /\ big   \in 0 .. 5

Init == /\ small = 0
        /\ big = 0

FillSmall   == /\ small < 3
               /\ small' = 3
               /\ big' = big

FillBig     == /\ big < 5
               /\ small' = small
               /\ big' = 5

PourSmall   == /\ small > 0
               /\ small' = 0
               /\ big' = big

PourBig     == /\ big > 0
               /\ small' = small
               /\ big' = 0

MoveToSmall == \/ /\ small + big < 3
                  /\ small' = small + big
                  /\ big' = 0
               \/ /\ small + big > 3
                  /\ small' = 3
                  /\ big' = small + big - 3

MoveToBig   == \/ /\ small + big < 5
                  /\ small' = 0
                  /\ big' = small + big
               \/ /\ small + big > 5
                  /\ small' = small + big - 5
                  /\ big' = 5         

Next == \/ FillSmall
        \/ FillBig
        \/ PourSmall
        \/ PourBig
        \/ MoveToSmall
        \/ MoveToBig

=============================================================================
\* Modification History
\* Last modified Thu Sep 03 10:43:49 CST 2020 by me
\* Last modified Thu Sep 03 10:19:25 CST 2020 by me
\* Created Thu Sep 03 10:04:12 CST 2020 by me
