% http://www.let.rug.nl/bos/lpn//lpnpage.php?pagetype=html&pageid=lpn-htmlse11

contain(katarina,olga).
contain(olga,natasha).
contain(natasha,irina).

in(X,Y) :- contain(X,Y).
in(X,Y) :- contain(X,Z),
           in(Z,Y).