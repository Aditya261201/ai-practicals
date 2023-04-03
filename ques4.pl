print_fibo(_A,_B,_C,L):- L=:=1,write('0.').
print_fibo(_A,_B,_C,L):- L=:=0,write(' - '),nl.
print_fibo(A,_B,C,_L):- C=:=1,write(A),write('.'),nl.
print_fibo(A,B,C,L):- write(A),write(','),
                      E is A+B,
                      D is B,
                      F is C-1,print_fibo(D,E,F,L).
                      
fibonacci:- 
    write('Enter number of Elements you want from Fibonacci Series :- '),read(A),nl,
    write('Fibonacci Series :- '),print_fibo(0,1,A,A),nl.
