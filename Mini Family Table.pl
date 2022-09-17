man(adam).
man(peter).

woman(eve).
woman(alison).

parent(eve,peter).
parent(adam,peter).
parent(eve,alison).
parent(adam,alison).

mother(M,C):-woman(M),parent(M,C).
father(F,C):-man(F),parent(F,C).
son(S,P):-man(S), parent(P,S).
daughter(D,P):-woman(D),parent(P,D).
sibling(S1,S2):-parent(P,S1),parent(P,S2),S1\=S2.
fullsibling(S1,S2):-mother(M,S1), mother(M,S2), father(F,S1), father(F,S2), S1\=S2.