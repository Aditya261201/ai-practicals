max([H|T],M):- H>M,max(T,H).
max([H|T],M):- H=<M,max(T,M).
max([],M):- M>=0,write("Greatest number is :- "),write(M),nl.
maxList([]):-write("List can't be Empty").
maxList([H|T]):- M is H,max(T,M),nl.

get_list(List) :-
    write('Enter a list of numbers: '),
    read(List).

:- initialization(main).

main :-
    get_list(List),
    maxList(List).
