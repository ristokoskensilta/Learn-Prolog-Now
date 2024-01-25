%  http://www.let.rug.nl/bos/lpn//lpnpage.php?pagetype=html&pageid=lpn-htmlse11

directTrain(saarbruecken,dudweiler).
directTrain(forbach,saarbruecken).
directTrain(freyming,forbach).
directTrain(stAvold,freyming).
directTrain(fahlquemont,stAvold).
directTrain(metz,fahlquemont).
directTrain(nancy,metz). 

travelFromTo(X,Y) :-  directTrain(X,Y).
travelFromTo(X,Y) :-  directTrain(X,Z),
                      travelFromTo(Z,Y).