% http://www.let.rug.nl/bos/lpn//lpnpage.php?pagetype=html&pageid=lpn-htmlse11

numeral(0).
numeral(succ(X))  :-  numeral(X). 

greater_than(succ(X),Y) :- X = Y. 
greater_than(succ(X),Y) :- greater_than(X,Y).


% greater_than(succ(_),0).
% greater_than(succ(X),succ(Y)) :- greater_than(X,Y).