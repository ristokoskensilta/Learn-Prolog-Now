% wont work! generates a infinite structure that give rises a momeory probelm

letter(a).
letter(b).
l(X) :- letter(X).
l(c(X)) :- l(X).
l(+(X,Y)) :- l(X), l(Y). 
l(*(X,Y)) :- l(X), l(Y). 

% partial ordering
g(X,X) :- l(X).
g(X,Z) :- g(X,Y), g(Y,Z).
% ei tomi X == Y :- g(X,Y), g(Y,X).

% DEFS
eq(X,Y) :-  g(X,Y), g(Y,X).

% AXIOMS (note redundancy)
% (1)
eq(A*(B*C), (A*B)*C) :- l(A), l(B), l(C).
eq(A+(B+C), (A+B)+C) :- l(A), l(B), l(C).

% (2)
eq(A*B, B*A) :- l(A), l(B).
eq(A+B, B+A) :- l(A), l(B).

% (3)
%eq(A*(A+B), A) :- l(A), l(B).
%eq(A+(A*B), A) :- l(A), l(B).

% (4)
eq(A*(B+C), (A*B)+(A*C)) :- l(A), l(B), l(C).
eq(A+(B*C), (A+B)*(A+C)) :- l(A), l(B), l(C).

% (6) 
%eq(A*A,A) :- l(A).
%eq(A+A,A) :- l(A).

% (9)
%eq(c(A*B), c(A)+c(B)) :- l(A), l(B).
%eq(c(A+B), c(A)*c(B)) :- l(A), l(B).

% (10)
%eq(A,P) :- g(c(A),A), p(P).

% (11)
eq(c(A),A) :- l(A).

% (12)
%eq(A*B, A*C) :- eq(B,C).
%eq(A+B, A+C) :- eq(B,C).

% neutral elements for + and *
eq(A+P,A) :- p(P), l(A).
eq(A*U,A) :- u(U), l(A).

% DEFS
p(X) :- eq(X,A*c(A)), l(A).  % the paradoxal concept
u(X) :- eq(X,A+c(A)), l(A).  % the universal concept

% (5)
%g(P,A) :- p(P), l(A).
%g(A,U) :- u(U), l(A).

% (7)
%g(A*B, A) :- l(A), l(B).
%g(A, A+B) :- l(A), l(B).

% (8)
%g(A,B) :- eq(A, X*B), l(A), l(B), l(X).
%g(A,B) :- eq(A+X, B), l(A), l(B), l(X).

