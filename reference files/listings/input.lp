agent(A) :- initialstate(A,_,_).
horizon(A,T) :- target(A,_,T).

movement((1,0),"S").movement((-1,0),"N").movement((0,1),"E").movement((0,-1),"W").

left("N","W").left("W","S").left("S","E").left("E","N").
right("N","E").right("E","S").right("S","W").right("W","N").