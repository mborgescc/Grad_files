/* Questao 1 */

contem(A,B,[],[]).

contem(A,B,[X|L],[X|L2]):-
	X>=A,
	X=<B,
	!, /* Uso do CUT (!): Impede de ler a proxima regra quando as condicoes anteriores forem satisfeitas */
	contem(A,B,L,L2).

contem(A,B,[_|L],L2):-
	contem(A,B,L,L2).

/* Questao 5 */

uni([],L,L).
uni(L,[],L).

uni([X|L1],[Y|L2],L3):-
	X=Y,
	uni(L1,[Y|L2],L3).

uni([X|L1],[Y|L2],[X|L3]):-
	X<Y,
	uni(L1,[Y|L2],L3).

uni([X|L1],[Y|L2],[Y|L3]):-
	X>Y,
	uni([X|L1],L2,L3).

/* Questao 10 */

ord([_]).
ord([X,Y|L]):-
	X=<Y,
	ord([Y|L]).

/* Questao 2 */

f(0,1).
f(1,1).
f(N,R):-
	N>=0,
	A is N-2,
	B is N-1,
	f(A,C),
	f(B,D),
	R is C+D.

/* Questao 3 */

mult3(0).
mult3(X):-
	X>=3,
	Y is X-3,
	mult3(Y).

todos_mult3(0,[0]).
todos_mult3(X,[X|L]):-
	mult3(X),
	!,
	Y is X-1,
	todos_mult3(Y,L).

todos_mult3(X,L):-
	X>=1,
	Y is X-1,
	todos_mult3(Y,L).
