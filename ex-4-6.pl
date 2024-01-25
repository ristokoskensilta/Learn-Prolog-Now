% http://www.let.rug.nl/bos/lpn//lpnpage.php?pagetype=html&pageid=lpn-htmlse16
% Write a predicate twice(In,Out) whose left argument is a list, and whose 
% right argument is a list consisting of every element in the left list 
% written twice. For example, the query
%   twice([a,4,buggle],X).
% should return
%   X  =  [a,a,4,4,buggle,buggle]). 

twice([],[]).
twice([X|Xs],[X,X|Y]) :- twice(Xs,Y).