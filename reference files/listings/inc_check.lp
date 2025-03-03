:- starttime(A,T1), starttime(A,T2), T1<T2, query(t).

:- agent(A), not goal(A,_), query(t).