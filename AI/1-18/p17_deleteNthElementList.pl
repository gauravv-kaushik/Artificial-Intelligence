del(N,[A|Y],R) :- N>1 , K is N-1 , del(K ,Y , Z) ,
    append([A] , Z , R).
del(N,[_|Y],R) :- N =:= 1, R = Y.
