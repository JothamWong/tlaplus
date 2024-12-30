---- MODULE clock ----
EXTENDS TLC, Naturals
VARIABLE hr
HCini == hr \in (1 .. 12)
HCnext == hr' = IF hr = 12 THEN 1 ELSE hr + 1
HC == HCini /\ [][HCnext]_hr
----
THEOREM HC => []HCini
====