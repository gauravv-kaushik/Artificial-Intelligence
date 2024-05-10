% facts

male(A).
male(B).
male(C).
male(D).
male(E).
male(F).
male(G).


female(H).
female(I).
female(J).
female(K).
female(L).
female(M).
female(N).

parent(A,B).
parent(A,C).
parent(A,N).

parent(J,B).
parent(J,C).
parent(J,N).

parent(G,A).
parent(G,F).
parent(I,A).
parent(I,F).

parent(F,D).
parent(F,E).
parent(F,K).
parent(F,L).

parent(H,K).
parent(H,D).
parent(H,L).
parent(H,E).

husband(A,J).
husband(F,H).
husband(G,I).

wife(I,G).
wife(H,F).
wife(J,A).

father(X,Y):-
    male(X),
    parent(X,Y).

mother(X,Y):-
    female(X),
    parent(X,Y).

brother(X,Y):-
    male(X),
    parent(T,X),
    parent(T,Y).

sister(x,y):-
    female(X),
    parent(T,X),
    parent(T,Y).


grandparent(X,Y):-
    parent(T,Y),
    parent(X,T).

grandfather(X,Y):-
    father(T,Y),
    father(X,T).

grandmother(X,Y):-
    father(T,Y),
    mother(X,T).

uncle(X,Y):-
    father(T,Y),
    brother(T,X).


aunt(X,Y):-
    uncle(W,Y),
    wife(X,W).


sibling(X,Y):-
    father(T,X),
    father(T,Y).


nephew(X,Y):-
    male(X),
    uncle(Y,X).

nephew(X,Y):-
    male(X).
    aunt(Y,X).


niece(X,Y):-
    female(X),
    uncle(Y,X).

niece(X,Y):-
    female(X),
    aunt(Y,X).


daughter(X,Y):-
    female(X),
    parent(Y,X).


son(X,Y):-
    male(X),
    parent(Y,X).
