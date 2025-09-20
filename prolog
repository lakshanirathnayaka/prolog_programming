element_at([X|_],1,X). %basecase:first element
element_at([_|T],N,X):-%recursive case:skip one and decrement N
    element_at(T, N1, X),
    N is N1 + 1.

?-element_at([a,b,c,d],3,X).
?-element_at([a,b,c,d],N,c).

%Base case: sum of empty list is 0
sum_list([],0).

%Recursive case: sum = head + sum of tail
sum_list([H|T],Sum):-
    sum_list(T,Rest),
    Sum is H+Rest.

?-sum_list([7,2,6,8],S).

list_length([],0).
list_length([_|T],Length):-
    list_length(T,TailLength),
    Length is 1 + TailLength.
    
?-list_length([1,2,4,5,6],Length).

