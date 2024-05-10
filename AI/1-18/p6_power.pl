p(_ , W , _) :- W < 0 , write('Invalid Power').
p(_ , W , X) :- W =:= 0 , X is 1.
p(N , W , X) :- p(N , W-1 , Y) , X is N * Y.
