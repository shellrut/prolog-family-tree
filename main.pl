%%==================================================
%% Developer -- Shelby Rutland
%% Date ------- March 15, 2021
%%==================================================

%%==================================================
%% Facts
%%==================================================

childof(Noel, Della).
childof(Solomon, Della).

childof(Della, Celeste).
childof(Vincent, Celeste).

childof(Renatta, Vincent).
childof(Clifford, Vincent).

male(Vincent).
male(Solomon).
male(Clifford).

female(Noel).
female(Della).
female(Celeste).
female(Renatta).

%%===================================================
%% Rules
%%===================================================

fatherof(a, b) :- male(a), childof(b, a).

motherof(a, b) :- female(a), childof(b, a).

brotherof(a, b) :- male(a), a \= b, childof(a, c), childof(b, c).

sisterof(a, b) :- female(a), a \= b, childof(a, c), childof(b, c).

auntof(a, b) :- female(a), childof(b, c), sisterof(a, c).

uncleof(a, b) :- male(a), childof(b, c), brotherof(a, c).

firstcousinof(a,b) :- childof(a, c), childof(b, d), sisterof(c, d) ; brotherof(c, d).
