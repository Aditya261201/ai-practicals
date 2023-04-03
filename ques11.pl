check([H|T],[X|Y]):-H=:=X,check(T,Y).
check([_H|_T],[_X|_Y]):-write("Its not a Plaindrome").
check([],[]):-write("Its a Palindrome").
palindrome([H|T]):- reverse([H|T],[X|Y]),check([H|T],[X|Y]).

