% http://www.let.rug.nl/bos/lpn//lpnpage.php?pagetype=html&pageid=lpn-htmlse30
%
% Exercise  7.1 Suppose we are working with the following DCG:
%   s  -->  foo,bar,wiggle.
%   foo  -->  [choo].
%   foo  -->  foo,foo.
%   bar  -->  mar,zar.
%   mar  -->  me,my.
%   me  -->  [i].
%   my  -->  [am].
%   zar  -->  blar,car.
%   blar  -->  [a].
%   car  -->  [train].
%   wiggle  -->  [toot].
%   wiggle  -->  wiggle,wiggle. 

s(X,Y) :- 
    foo(X,Z),
    bar(Z,U),
    wiggle(U,Y).

foo([choo|A],A).
foo(X,Y) :-
    foo(X,Z),
    foo(Z,Y).

bar(X,Y) :-
    mar(X,Z),
    zar(Z,Y).

mar(X,Y) :-  
    me(X,Z),
    my(Z,Y).

me([i|A],A).

my([am|A],A).

zar(X,Y) :-
    blar(X,Z),
    car(Z,Y).

blar([a|A],A).

car([train|A],A).

wiggle([toot|A],A).
wiggle(X,Y) :-
    wiggle(X,Z),
    wiggle(Z,Y). 