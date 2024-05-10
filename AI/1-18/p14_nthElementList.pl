nele(N , [A|_] , X) :- N =:= 1, X is A.
nele(N,[_|Y],X) :- N > 1 , K is N-1, nele(K , Y , X).
