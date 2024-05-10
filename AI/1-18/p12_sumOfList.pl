sumlst([A|Z],R):- sumlst(Z,K) , R is A+K.
sumlst([] , R) :- R is 0.
