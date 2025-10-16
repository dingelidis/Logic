parent(kronos,zeus).
parent(kronos demeter).
parent(zeus,persephone).

male(kronos).	
male(zeus).
female(persephone).

1 ?- male(X).
X - kronos;  
X -zeus.
2 ?- female(X).

father(X,Y):-
  parent(X,Y).
  male(X).
  
mother(X,Y):-
	parent(X,Y).
	female(X).
	
sisters(X,Y,F,M):-
	female(X),
	female(Y),
	mother(M,Y),
	mother(M,X),
	father(F,X),
	father(F,Y).
	
stepsisters(X,Y,P):-
	female(X),
	female(Y),
	parent(P,X),
	parent(P,Y).
	
brothers(X,Y,F,M):-
	male(X),
	male(Y),
	mother(M,Y),
	mother(M,X),
	father(F,X),
	father(F,Y).
	
stepbrothers(X,Y,P):-
	male(X),
	male(Y),
	parent(P,X),
	parent(P,Y).

grandparents(X,P,G):-
	parent(P,X),
	parent(G,P).

grandfather(X,P,G):-
	parent(P,X),
	father(G,P).
	

grandmother(X,P,G):-
	parent(P,X),
	mother(G,P).

	
	
ancestor(X,P,G):-
	parent(P,X),
	grandparent(G,X).
	
-? mother(rhea,zeus).

-? father(kronos,zeus).

-? stepsisters(persephone,hebe).

-? brothers(apollo,hermes).

-?grandmother(rhea,athena). 

d)	Justify your answers to the following queries: 
?- X(artemis, artemis). true 
?- male(kostas). no (there is no data on whether that is true or not)
?- child_of(zeus, artemis). no (there is no rule "child_of")
	
