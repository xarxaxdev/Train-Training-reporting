move(A,"Start",U) :- initialstate(A,U,_).
1 {move(A,(P,D),"End"): vertex((P,D))} 1 :- target(A,P,_).

{move(A,U,V): edge(U,V)} 1 :- agent(A), vertex(U).

:- move(A,U,_), not move(A,_,U), U!="Start".
:- move(A,_,V), not move(A,V,_), V!="End".

:- move(A,V,_), 2 {move(A,_,V)}.