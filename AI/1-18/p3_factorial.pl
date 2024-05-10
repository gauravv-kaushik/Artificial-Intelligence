factorial(0,1).
factorial(N,T):- N>0, Z is N-1, factorial(Z,Y), T is Y*N.
