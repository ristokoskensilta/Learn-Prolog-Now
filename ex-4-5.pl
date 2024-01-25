% http://www.let.rug.nl/bos/lpn//lpnpage.php?pagetype=html&pageid=lpn-htmlse16
% Write a predicate listtran(G,E) which translates a list of German number 
% words to the corresponding list of English number words. For example:
%   listtran([eins,neun,zwei],X). 

tran(eins,one).
tran(zwei,two).
tran(drei,three).
tran(vier,four).
tran(fuenf,five).
tran(sechs,six).
tran(sieben,seven).
tran(acht,eight).
tran(neun,nine). 

listtran([],[]).
listtran([X|Xs],[Y|Ys]) :- 
    tran(X,Y),
    listtran(Xs,Ys).
