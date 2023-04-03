insert_nth(I, 1, L, [I|L]).
insert_nth(I, N, [H|T], [H|R]) :-
    N > 1,
    N1 is N-1,
    insert_nth(I, N1, T, R).

take_input(List) :-
    write('Enter a list: '),
    read(List).

take_input_element(E) :-
    write('Enter the element to insert: '),
    read(E).

take_input_position(P) :-
    write('Enter the position to insert: '),
    read(P).

insert :-
    take_input(List),
    take_input_element(E),
    take_input_position(P),
    insert_nth(E, P, List, Result),
    write('Original list: '),
    write(List),
    nl,
    write('Element inserted list: '),
    write(Result).
