ins(I,N,[A|Y],R) :- N>1 , K is N-1 , ins(I , K ,Y , Z) ,
    append([A] , Z , R).
ins(I,N,L,R) :- N =:= 1, append([I] , L ,R).
