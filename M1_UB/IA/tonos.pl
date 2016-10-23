char(0,'0').
char(1,'1').
char(2,'2').
char(3,'3').
char(4,'4').
char(5,'5').
char(6,'6').
char(7,'7').
char(8,'8').
tono(L):-remplir(8,0,0,[],L).
remplir(X,Y,Z,L2,L):-T is X*Y,T\==16,X1 is 5-Y,X>X1,X1\==0,X2 is X-X1,Y1 is Y+X1,charsit(X,Y,Z,L1),not(member(L1,L2)),remplir(X2,Y1,Z,[L1|L2],L).
remplir(X,Y,Z,L2,L):-T is X*Y,T\==16,X1 is 5-Y,X1>=X,Y1 is X+Y,charsit(X,Y,Z,L1),not(member(L1,L2)),remplir(0,Y1,Z,[L1|L2],L).
remplir(X,Y,Z,L2,L):-T is X*Y,T\==16,X1 is 3-Z,X>X1,X1\==0,X2 is X-X1,Z1 is Z+X1,charsit(X,Y,Z,L1),not(member(L1,L2)),remplir(X2,Y,Z1,[L1|L2],L).
remplir(X,Y,Z,L2,L):-T is X*Y,T\==16,X1 is 3-Z,X1>=X,Z1 is Z+X,charsit(X,Y,Z,L1),not(member(L1,L2)),remplir(0,Y,Z1,[L1|L2],L).
remplir(X,Y,Z,L2,L):-T is X*Y,T\==16,Y1 is 3-Z,Y>Y1,Y1\==0,Y2 is Y-Y1,Z1 is Z+Y1,charsit(X,Y,Z,L1),not(member(L1,L2)),remplir(X,Y2,Z1,[L1|L2],L).
remplir(X,Y,Z,L2,L):-T is X*Y,T\==16,Y1 is 3-Z,Y1>=Y,Z1 is Z+Y,charsit(X,Y,Z,L1),not(member(L1,L2)),remplir(X,0,Z1,[L1|L2],L).
remplir(X,Y,Z,L2,L):-T is X*Y,T\==16,Y1 is 8-X,Y>Y1,Y1\==0,X1 is X+Y1,Y2 is Y-Y1,charsit(X,Y,Z,L1),not(member(L1,L2)),remplir(X1,Y2,Z,[L1|L2],L).
remplir(X,Y,Z,L2,L):-T is X*Y,T\==16,Y1 is 8-X,Y1>=Y,X1 is X+Y,charsit(X,Y,Z,L1),not(member(L1,L2)),remplir(X1,0,Z,[L1|L2],L).
remplir(X,Y,Z,L2,L):-T is X*Y,T\==16,Z1 is 5-Y,Z>Z1,Z1\==0,Y1 is Y+Z1,Z2 is Z-Y1,charsit(X,Y,Z,L1),not(member(L1,L2)),remplir(X,Y1,Z2,[L1|L2],L).
remplir(X,Y,Z,L2,L):-T is X*Y,T\==16,Z1 is 5-Y,Z1>=Z,Y1 is Y+Z,charsit(X,Y,Z,L1),not(member(L1,L2)),remplir(X,Y1,0,[L1|L2],L).
remplir(X,Y,Z,L2,L):-T is X*Y,T\==16,Z1 is 8-X,Z>Z1,Z1\==0,X1 is X+Z1,Z2 is Z-Z1,charsit(X,Y,Z,L1),not(member(L1,L2)),remplir(X1,Y,Z2,[L1|L2],L).
remplir(X,Y,Z,L2,L):-T is X*Y,T\==16,Z1 is 8-X,Z1>=Z,X1 is X+Z,charsit(X,Y,Z,L1),not(member(L1,L2)),remplir(X1,Y,0,[L1|L2],L).
remplir(4,4,0,L2,L):-charsit(4,4,0,L1),reverse(L2,L3),append(L3,[L1],L),affiche(L).
charsit(X,Y,Z,L):-char(X,CX),char(Y,CY),char(Z,CZ),string_concat(CX,';',S1),string_concat(S1,CY,S2),string_concat(S2,';',S3),string_concat(S3,CZ,L).
affiche([Y|L]):-L\==[],write(Y),write(' --> '),affiche(L).
affiche([Y]):-write(Y),write('\n').
