
l(a).
l(b).
l(u).
l(p).
l(c(X)) :- l(X).
l(X+Y) :- l(X), l(Y).
l(X*Y) :- l(X), l(Y).


% up
g(X, X+Y) :- l(X), l(Y).
g(X+c(X), u) :- l(X), l(Y).
g(X+Y, Y+X) :- l(X), l(Y).

% down
g(X*Y, X) :- l(X), l(Y).
g(X*c(X), p) :- l(X).
g(X*Y, Y*X)  :- l(X), l(Y).

% liit.
g(X*(Y*Z), (X*Y)*Z) :- l(X), l(Y), l(Z).
g((X*Y)*Z, X*(Y*Z)) :- l(X), l(Y), l(Z).

% osit.
g(X*(Y+Z), (X*Y)+Z) :- l(X), l(Y), l(Z).
g(X+(Y*Z), (X+Y)*Z) :- l(X), l(Y), l(Z).

% trans
g(X,Z) :- g(X,Y), g(Y,X), l(X), l(Y).
g(Y,X) :- Y = c(c(X)),!.

