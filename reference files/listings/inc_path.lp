{starttime(A,t)} :- initialstate(A,_,T), t>=T.

state(A,(P,D),t) :- initialstate(A,(P,D),_), starttime(A,t-1).

{state(A,((X+X',Y+Y'),D2),t): movement((X',Y'),D2), transition((X,Y),(D1,D2))} :- state(A,((X,Y),D1),t-1), not target(A,(X,Y),_).
{state(A,(P,D),t)} :- state(A,(P,D),t-1), not target(A,P,_).

:- 2 {state(A,_,t)}, agent(A).