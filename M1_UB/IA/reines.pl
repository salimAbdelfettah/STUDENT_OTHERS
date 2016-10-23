reines(L):-write('-- Recherche en cours ... --\n'),solution(L,1).
solution(L,Y):-Y<9,delete([1,2,3,4,5,6,7,8],Y,L1),parcour([Y],L1,L1,L).
solution(L,Y):-Y<9,Y1 is Y+1,solution(L,Y1).
solution(_,9):-write('-- FIN --').
parcour(L1,[Y|_],L3,L):-length(L1,X1),nonattack(L1,Y,X1),append(L1,[Y],L2),delete(L3,Y,L4),parcour(L2,L4,L4,L).
parcour(L1,[Y|L2],L3,L):-append(L3,[Y],L4),sort(L4,L5),parcour(L1,L2,L5,L).
parcour(L,[],[],L).
nonattack([X|L],Y,Z):-X1 is X-Y,abs(X1,X2),X2\==Z,Z1 is Z-1,nonattack(L,Y,Z1).
nonattack([],_,_).










