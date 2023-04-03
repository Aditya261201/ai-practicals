reverse([], []).
reverse([H|T], R) :- reverse(T, RevT), append(RevT, [H], R).

reverse_list :- 
    write('Enter a list: '),
    read(List),
    reverse(List, RevList),
    write('Original List: '), write(List), nl,
    write('Reversed List: '), write(RevList), nl.
