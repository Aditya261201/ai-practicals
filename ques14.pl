nth_element(1, [H|_], H).
nth_element(N, [_|T], X) :- N > 1, N1 is N-1, nth_element(N1, T, X).

main :- write('Enter a list: '),
        read(List),
        write('Enter the position: '),
        read(Position),
        nth_element(Position, List, X),
        write('Element at position '), write(Position), write(' is '), write(X).

?- main.
