
intersection(A,B,R):-
    findall(X,(member(X,A),member(X,B)),R).

union(A,B,R):-
    findall(X,member(X,A);member(X,B),R).

subtraction(A,B,R):-
    findall(X,member(X,A),not(member(X,B)),R).

/* 2 */

list_to_set(L,R):-
    setof(X,member(X,L),R).

/* 3 */

cartesian(L1,L2,R):-
    findall((X,Y),member(X,L1),member(Y,L2),R).

/* 4 */

greater_than(L,M,R):-
    findall(X,(member(X,L),X>M),R).

/* 6 */
:- dynamic(capital/2).

capital():-
write_list(['What country?' ,nl]),
read(country),
write_list(['What is the capital of ', country, nl]),
read(capital),
assert(country,capital).

/* 7 */

geography():-

write_list(['What country? ',nl]),
read(country),
write_list('The capital of ',country,' is ',capital(country,capital))