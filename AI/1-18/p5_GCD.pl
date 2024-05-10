gcd(A,B,X):- A=:=B, X is A.
gcd(A,B,X):- A>B, gcd(A-B ,B ,X).
gcd(A,B,X):- A<B, gcd(B-A ,A ,X).

