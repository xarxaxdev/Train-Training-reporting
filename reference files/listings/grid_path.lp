1 {starttime(A,T'): T'=T..L-1, T'>0} 1 :- initialstate(A,_,T), horizon(A,L).

state(A,(P,D),T+1) :- initialstate(A,(P,D),_), starttime(A,T).

{state(A,((X+X',Y+Y'),D2),T): movement((X',Y'),D2), transition((X,Y),(D1,D2))} :- state(A,((X,Y),D1),T-1), horizon(A,L), T<=L, not target(A,(X,Y),_).
{state(A,(P,D),T)} :- state(A,(P,D),T-1), horizon(A,L), T<=L, not target(A,P,_).

:- 2 {state(A,_,T)}, state(A,_,T).