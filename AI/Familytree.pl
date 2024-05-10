male(jp)
male(dn)
female(rr)
female(lx)
female(sw)
female(pw)
parent(jp,dn)
parent(rr,dn)
parent(jp,lx)
parent(rr,lx)
parent(jp,sw)
parent(rr,sw)
parent(jp,pw)
parent(rr,pw)

father(X,A):- parent(X,A) , male(X).
mother(Y,A):- parent (Y,A) , female(Y).

son(A,Y) :- mother(Y,A), father(X,A) , male(A).
daughter(B,Y) :- mother(Y,B), father(X,B), female(B).

brother(A,B) :- mother(Y,A) , mother(Y,B) , male(A).
sister(B,A) :- mother(Y,A) , mother(Y,B) , female(B).
