% http://www.let.rug.nl/bos/lpn//lpnpage.php?pagetype=html&pageid=lpn-htmlse30
%
% Exercise  7.2 The formal language a^n b^n −{ ϵ } consists of all 
% the strings in a^n b^n except the empty string. Write a DCG that 
% generates this language. 

s --> l,r.  
s --> l,s,r.
l --> [a].
r --> [b].