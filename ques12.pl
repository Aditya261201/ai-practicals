sumlist(List) :- sumlist(List, 0).

sumlist([H|T], S) :-
    C is H + S,
    sumlist(T, C).

sumlist([], S) :-
    write("Sum of List is: "),
    write(S),
    nl.

main :-
    write("Enter a list of numbers (separated by commas): "),
    read(List),
    sumlist(List).
