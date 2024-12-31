---- MODULE asyncinterface ----
EXTENDS TLC, Naturals
CONSTANT Data
VARIABLES val, rdy, ack
Init == /\ val \in Data
        /\ rdy \in BOOLEAN
        /\ ack = rdy
Send == /\ rdy = ack
        /\ val' \in Data
        /\ rdy' = 1 - rdy
        /\ UNCHANGED ack
Rcv ==  /\ rdy /= ack
        /\ ack' = 1 - ack
        /\ UNCHANGED << val, rdy >>
Next == Send \/ Rcv
Spec == Init /\ [][Next]_<<val, rdy, ack>>
====
THEOREM Spec => []Init
====