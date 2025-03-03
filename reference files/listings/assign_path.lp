step(U,0,U,"Start") :- initialstate(_,U,_).
step(U,N+1,W,step(U,N,V,S)) :- step(U,N,V,S), edge(V,W), time(N+1), @contains(S,V)!=1.

path((U,G,step(U,N,V,S)),N) :- step(U,N,V,S), initialstate(A,U,_), target(A,G,_), V=(G,_).

pathSteps((U,G,S), S) :- path((U,G,S),_).
pathSteps(I,S) :- pathSteps(I, step(U,N,V,S)).

path(I,N,V) :- pathSteps(I, step(_,N,V,_)).