% http://www.let.rug.nl/bos/lpn//lpnpage.php?pagetype=html&pageid=lpn-htmlse46
% Exercise  10.1 Suppose we have the following database:
   p(1).
   p(2)  :-  !.
   p(3).
%
%   ?-  p(X).
% X = 1 ? ;
%
% X = 2
%   
%   ?-  p(X),p(Y).
% X = 1
% Y = 1 ? ;
%
% X = 1
% Y = 2 ? ;
%
% X = 2
% Y = 1 ? ;
%
% X = 2
% Y = 2
%   
%   ?-  p(X),!,p(Y). 
% X = 1
% Y = 1 ? ;
%
% X = 1
% Y = 2