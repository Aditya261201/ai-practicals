sum(A,B):- Z is A+B,write(Z).
sum:-
write('Enter first number :- '),nl,read(A),
write('Enter second number :- '),nl,read(B),
write('Sum of '),write(A+B),write(' is '),sum(A,B).
