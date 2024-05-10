evenleng(List) :- length(List , L) , K is L mod 2 , K =:= 0.
oddleng(List) :- length(List , L) , K is L mod 2  , K =\= 0.
