l(a).
l(b).

% base case
s(X,X) :- l(X).

s(X+X,X).

s(X+Y,Z+U) :- s(X,Z), s(Y,U).
s(X,Y) :- s(X,Z), s(Z,Y).