weighted_vertex((P,D)) :- vertex((P,D)), 3 {vertex((P,_))}.
weighted_vertex(U) :- vertex((U)), initialstate(_,U,_).
weighted_vertex((P,D)) :- vertex((P,D)), target(_,P,_).

path(U,V,1,V,U) :- weighted_vertex(U), edge(U,V).

path(U,W,N+1,F,V) :- path(U,V,N,F,_), edge(V,W), not weighted_vertex(V).
remove(U,V,N) :- path(U,V,N,_,_), not weighted_vertex(V).

weighted_edge(U,V,N,D) :- path(U,V,N,(_,D),_), not remove(U,V,N).

opposed_edge((U1,V1,N,D1),(U2,V2,N,D2),N) :- path(U1,V1,N,F1,L1), path(U2,V2,N,F2,L2),
    (PF1,D1) = F1, (PL2,_) = L2, PF1==PL2,
    (PL1,_) = L1, (PF2,D2) = F2, PL1==PF2.