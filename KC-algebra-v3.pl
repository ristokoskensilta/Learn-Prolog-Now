letter(a).
letter(b).
%letter(c(a)).
%letter(c(p)).
%letter(u).
%letter(p).
l(X) :- letter(X).
l(X+Y) :- l(X), l(Y).
l(X*Y) :- l(X), l(Y).
%l(c(X)) :- l(X).

simply(X,X) :- letter(X).
simply(X+X,X).
simply(X*X,X).

%simply((X+Y)+Z,X+(Y+Z)).
%simply((X*Y)*Z,X*(Y*Z)).

%simply(X+Y, Z+U) :- simply(X,Z), simply(Y,U).

simply(X+Y, Z) :- l(X), l(Y), l(Z), l(V), simply(X,V), simply(V+Y, Z).

%simply(X*Y, Z) :- l(X), l(Y), l(Z), l(V), simply(Y,V), simply(X*V, Z).
%simply(p*X,p).
%sipmly(p+X,X).
%simply((X*Y)+(X*c(Y)),X).
%simply(u+X,u).
%simply(u*X,X).
%simply(X+c(X),u).
%simply(X*c(X),p).
%
