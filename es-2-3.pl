% http://www.let.rug.nl/bos/lpn//lpnpage.php?pagetype=html&pageid=lpn-htmlse7
   
   word(determiner,a).
   word(determiner,every).
   word(noun,criminal).
   word(noun,'big  kahuna  burger').
   word(verb,eats).
   word(verb,likes).
   
   sentence(Word1,Word2,Word3,Word4,Word5):-
         word(determiner,Word1),
         word(noun,Word2),
         word(verb,Word3),
         word(determiner,Word4),
         word(noun,Word5).

% ?- sentence(W1,W2,W3,W4,W5).