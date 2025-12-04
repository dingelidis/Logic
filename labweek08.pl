menu(List):-
	writelist(['Choose one of the following:',nl]),
	display(1, List),
	repeat,
	write('Your choice:'),
	read(N),
	make_a_choice(N,List,Choice),
	(Choice=error -> 
		writelist(['There is no such option. Choose again!',nl]);
		writelist(['You selected Choice: ', Choice,nl,nl])
	),
	fail. 	

display(_,[]).
display(N,[C1|R]):-	
	writelist(['Choice', N, ':', C1,nl]),
	N1 is N+1,
	display(N1, R).
	
make_a_choice(N,List,Choice):-
	length(List, L),
	N>0,
	N=<L,
	!,
	nth1(N,List,Choice).
make_a_choice(_,_,'error').

writelist([]).
writelist([nl|T]):-
	nl,!,
	writelist(T).
writelist([H|T]):-
	write(H),
	writelist(T).

square(N,R):-
    R is N * N.


dialogue(List):-
	writelist(['Choose one of the following:',nl]),
	display(1, List),
	write('Your choice:'),
	read(Choice ),  
	make_a_choice(N,List,Choice),
	(Choice=error -> 
		writelist(['There is no such option. Choose again!',nl]);
		dialogue(List).
	),
    (Choice= 1 ->
        writelist(['Enter the number you want the square of: ',nl]),
        read(N),
        square(N,R),
        write(['The square of ']),write(N),write(' is'),write(R),
        dialogue(List).
    ),
    (Choice = 2 ->
        writelist(['What number do you want the factorial of?: ',nl])
        read(N),
        factorial(N,R),
        write(['The square of ']),write(N),write(' is'),write(R),
        dialogue(List).
    ),
    (Choice = 3 ->
        writelist(['Sum of all numbers until that number ',nl])
        read(N),
        sum(N,R),
        write(['The sum ']),write(N),write(' is'),write(R),
        dialogue(List).
    ),
    (Choice = 4 -> 
         write('Exiting.')
    ).







