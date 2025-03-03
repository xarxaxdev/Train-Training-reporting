goal(A,t) :- state(A,(P,_),t), target(A,P,_).

:- state(A1,(P,_),t), state(A2,(P,_),t), A1<A2.

:- state(A1,(P1,_),t-1), state(A1,(P2,_),t), state(A2,(P2,_),t-1), state(A2,(P1,_),t), A1<A2.