1 {starttime(A,T'): T'=T..L-1, T'>0} 1 :- initialstate(A,_,T), horizon(A,L).
state(A,V,T+1) :- initialstate(A,V,_), starttime(A,T).

{move(A,((P,D1),V,N,D2),T): weighted_edge((P,D1),V,N,D2), T+N<=L} 1 :- horizon(A,L), state(A,(P,D),T), not state(A,(P,D),T+1), not target(A,P,_).
state(A,(P,D),T) :- not move(A,_,T-1), state(A,(P,D),T-1), T<=L, horizon(A,L), not target(A,P,_).
state(A,V,T+N) :- state(A,U,T), move(A,(U,V,N,D),T).