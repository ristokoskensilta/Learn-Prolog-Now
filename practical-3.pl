% http://www.let.rug.nl/bos/lpn//lpnpage.php?pagetype=html&pageid=lpn-htmlse12
% (1)
connected(1,2).
connected(3,4).
connected(5,6).
connected(7,8).
connected(9,10).
connected(12,13).
connected(13,14).
connected(15,16).
connected(17,18).
connected(19,20).
connected(4,1).
connected(6,3).
connected(4,7).
connected(6,11).
connected(14,9).
connected(11,15).
connected(16,12).
connected(14,17).
connected(16,19). 

path(A,B) :- connected(A,B).
path(A,B) :- connected(A,C),
             path(C,B).

% (2)
byCar(auckland,hamilton).
byCar(hamilton,raglan).
byCar(valmont,saarbruecken).
byCar(valmont,metz).

byTrain(metz,frankfurt).
byTrain(saarbruecken,frankfurt).
byTrain(metz,paris).
byTrain(saarbruecken,paris).

byPlane(frankfurt,bangkok).
byPlane(frankfurt,singapore).
byPlane(paris,losAngeles).
byPlane(bangkok,auckland).
byPlane(singapore,auckland).
byPlane(losAngeles,auckland). 

travel(A,B) :-
    byCar(A,B);
    byTrain(A,B);
    byPlane(A,B).

travel(A,B) :-
    (
        byCar(A,C);
        byTrain(A,C);
        byPlane(A,C)
    ),
    travel(C,B).

% (3)
travel(A,B,go(A,B)) :-
    byCar(A,B);
    byTrain(A,B);
    byPlane(A,B).

travel(A,B,go(A,C,D)) :-
    (
        byCar(A,C);
        byTrain(A,C);
        byPlane(A,C)
    ),
    travel2(C,B,D).

% (4)
travel2(A,B,go(byCar(A,B))) :- byCar(A,B).
travel2(A,B,go(byTrain(A,B))) :- byTrain(A,B).
travel2(A,B,go(byPlane(A,B))) :- byPlane(A,B).

travel2(A,B,go(byCar(A,C),D)) :-
    byCar(A,C),
    travel2(C,B,D).
travel2(A,B,go(byTrain(A,C),D)) :-
    byTrain(A,C),
    travel2(C,B,D).
travel2(A,B,go(byPlane(A,C),D)) :-
    byPlane(A,C),
    travel2(C,B,D).
