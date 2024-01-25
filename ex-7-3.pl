% http://www.let.rug.nl/bos/lpn//lpnpage.php?pagetype=html&pageid=lpn-htmlse30
% Exercise  7.3 Let a n b 2 n be the formal language which contains 
% all strings of the following form: an unbroken block of a s of 
% length n followed by an unbroken block of b s of length 2n , and 
% nothing else. For example, abb , aabbbb , and aaabbbbbb belong to 
% a n b 2 n , and so does the empty string. Write a DCG that generates 
% this language.

s --> [].
s --> l,s,r,r.
l --> [a].
r --> [b].