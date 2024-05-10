rev([],[]).
rev([A|Y],R):-rev(Y,K),append(K,[A],R).
