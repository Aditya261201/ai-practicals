len([], 0).
len([_H|T], A) :- len(T, A1), A is A1+1.

delete_nth(_, [], []).
delete_nth(N, L, _R) :-
    len(L, L_len),
    N > L_len,
    write("Index out of bounds: "),
    write(N),
    write(" is greater than list length"),
    nl.
delete_nth(N, [H|T], R) :-
    N =:= 1,
    R = T,
    write("Successfully Deleted "),
    write(H),
    nl.
delete_nth(N, [H|T], [H|R]) :-
    N > 1,
    N1 is N-1,
    delete_nth(N1, T, R).

main :- write("Enter a list: "), read(L), 
   write("Enter the index of the element to be deleted: "), read(N),
   delete_nth(N, L, _R).
   
?- main.