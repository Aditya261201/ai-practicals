len([], 0).
len([_H | T], A) :- len(T, A1), A is A1 + 1.

evenlength :-
    write("Enter list elements: "), read(L),
    len(L, Len), S is Len mod 2, checkeven(S).

checkeven(X) :- X =:= 0, write("List is of Even Length :- True").
checkeven(_) :- write("List is of Even Length :- False").

oddlength :-
    write("Enter list elements: "), read(L),
    len(L, Len), S is Len mod 2, checkodd(S).

checkodd(X) :- X =:= 1, write("List is of Odd Length :- True").
checkodd(_) :- write("List is of Odd Length :- False").
