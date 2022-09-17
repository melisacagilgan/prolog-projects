func1(X, Y):-X<0, Y is -1.
func1(X,Y):-X=0, Y is 0.
func1(X,Y):-X>0, Y is X*X+2*X+1.


func2(X,Y):-X>4,Y is (X*X+3*X+2).
func2(X,Y):-X<5,X>2,Y is (X*X*X+2*X*X+1).
func2(X,Y):-X<3, Y is (X*X*X*X*X).


% fibonacci sequence
fibo(0,1).
fibo(1,1).
fibo(X,R):- X>0, X1 is X-1, X2 is X-2, fibo(X1,R1), fibo(X2,R2), R is R2+R1.


% hanoi tower
hanoi(1,1).
hanoi(N,R):-N>1, N1 is (N-1), hanoi(N1,R1), R is 2*R1+1.