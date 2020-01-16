A = homework1

s = svds(A)  %  returns a vector of the six largest singular values of matrix A.

s = svds(A,8) % returns the 3 largest singular values

[U,S,V] = svds(A,8)

A3=U*S*V'

ss = svds(A,2,'smallest') % returns the 2 smallest singular values

norm(A-A3)