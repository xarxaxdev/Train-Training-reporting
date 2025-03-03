action(A,2,T) :- starttime(A,T).

action(A,4,T) :- not state(A,_,T-1), state(A,P,T), state(A,P,T+1).

action(A,1,T) :- state(A,(P,D1),T), state(A,(_,D2),T+1), left(D1,D2) , 2 {transition(P,(D1,_))}.
action(A,3,T) :- state(A,(P,D1),T), state(A,(_,D2),T+1), right(D1,D2), 2 {transition(P,(D1,_))}.

action(A,2,T) :- state(A,P,T-1), state(A,P,T), not state(A,P,T+1), not action(A,1,T), not action(A,3,T), state(A,_,T+1).