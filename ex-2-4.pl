% http://www.let.rug.nl/bos/lpn//lpnpage.php?pagetype=html&pageid=lpn-htmlse7

   word(astante,  a,s,t,a,n,t,e).
   word(astoria,  a,s,t,o,r,i,a).
   word(baratto,  b,a,r,a,t,t,o).
   word(cobalto,  c,o,b,a,l,t,o).
   word(pistola,  p,i,s,t,o,l,a).
   word(statale,  s,t,a,t,a,l,e). 

crossword(H1,H2,H3,V1,V2,V3) :-
          word(H1, _, L11, _, L31, _, L51, _), 
          word(H2, _, L13, _, L33, _, L53, _),
          word(H3, _, L15, _, L35, _, L55, _),
          word(V1, _, L11, _, L13, _, L15, _), 
          word(V2, _, L31, _, L33, _, L35, _),
          word(V3, _, L51, _, L53, _, L55, _).

% ?- crossword(H1,H2,H3,V1,V2,V3).

% indexis for the letters in the crossword
%
%       V1      V2      V3
%        _       _       _
% H1 _  L11  _  L21  _  L51  _
%        _       _       _
% H2 _  L13  _  L33  _  L52  _
%        _       _       _
% H3 _  L15  _  L35  _  L55  _
%        _       _       _
%
