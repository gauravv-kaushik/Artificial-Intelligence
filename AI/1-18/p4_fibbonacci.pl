fib(N,_T) :- N =< 0 , write('Invalid Input').
fib(N,T) :- N =:= 1, T is 0.
fib(N,T) :- N =:= 2 , T is 1.
fib(N,T) :- fib(N-1 , X) , fib(N-2 ,Y) , T is X+Y.
