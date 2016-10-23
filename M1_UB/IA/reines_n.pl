nreines(L,Z):-write('-- Recherche en cours ... --\n'),solution(L,1,Z).
solution(L,Y,Z):-Y0 is Y-1,Y0<Z,maken(L0,Z),delete(L0,Y,L1),parcour([Y],L1,L1,L).
solution(L,Y,Z):-Y0 is Y-1,Y0<Z,Y1 is Y+1,solution(L,Y1,Z).
solution(_,Y,Z):-Y>Z,write('-- FIN --').
parcour(L1,[Y|_],L3,L):-length(L1,X1),nonattack(L1,Y,X1),append(L1,[Y],L2),delete(L3,Y,L4),parcour(L2,L4,L4,L).
parcour(L1,[Y|L2],L3,L):-append(L3,[Y],L4),sort(L4,L5),parcour(L1,L2,L5,L).
parcour(L,[],[],L).
nonattack([X|L],Y,Z):-X1 is X-Y,abs(X1,X2),X2\==Z,Z1 is Z-1,nonattack(L,Y,Z1).
nonattack([],_,_).
maken(L,N):-listn(L1,N),reverse(L1,L).
listn([N|L],N):-N>0,N1 is N-1,listn(L,N1).
listn([],0).








