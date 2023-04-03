mul(A,B,_Z):- Temp is A*B,write(Temp),nl.
mul:- 
write('Enter 1st number :- '),read(A),nl,
write('Enter 2nd number :- '),read(B),nl,
write('Mulitplication Result :-  '),mul(A,B,1).
