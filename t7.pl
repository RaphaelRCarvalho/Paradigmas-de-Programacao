%1

pred([],[]).
pred([H||T],[H1|T1]) :- H1 is H + 1, pred(T,T1).

%Define uma lista com os elementos anteriores da outra lista.
%false.
%L=[9,10].
%false.
%X=3.

%2
ziplus([],[],[]).
ziplus([H1|T1],[H2|T2],[H3|T3]) :- H3 is H1 + H2, ziplus(T1,T2,T3).


%3
countdown(0,[0]).
countdown(N,[H|T]) :- H is N, X is N-1, countdown(X,T).

%4
potencias(0,[]).
potencias(N,L) :- potaux(N,0,L).

potaux(X,X,[]).
potaux(X,N,[H|T]) :- H is 2^N, A is N+1, potaux(X,A,T).

%5
positivos([],[]).
positivos([H|T],N) :- H =< 0, positivos(T,N).
positivos([H|T],[H|N]) :- H > 0, positivos(T,N).

%6
mesmaPosicao(N,[H|T],[H1|T1]) :- N = H, H1 = H.
mesmaPosicao(N,[H|T],[H1|T1]) :- mesmaPosicao(N,T,T1).

%7
intercala(X,[R],[H]) :- H is R.
intercala(N,[H|T],[H1,H2|T1]) :- H1 = H, H2 = N, intercala(N,T,T1).