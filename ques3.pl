show(1,Z):- write('Factorial of the number is :- '),write(Z),nl.
show(X,Z):-
    Temp is Z*X,
    Y is X-1,
    show(Y,Temp). 
fact :- write('Enter a Number whose Factorial is to be Calculated :- '),read(A),
show(A,1),nl.
