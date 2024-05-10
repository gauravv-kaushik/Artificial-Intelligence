palindrome(L):- rev(L,K), same(K,L).

rev([],[]).
rev([A|Y],R):-rev(Y,K),append(K,[A],R).

same([], []).
same([H1|R1], [H2|R2]):- H1 =:= H2, same(R1, R2).
