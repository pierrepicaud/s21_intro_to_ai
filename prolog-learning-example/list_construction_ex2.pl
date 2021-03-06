% Write a program to replaces all occurrences of one item in a list with another.
% It should have four arguments.
% The list you wish to use.
% The item to replace.
% The item to replace it with, and the resulting list.
% Here are some example of its behaviour 

% ?- replace_all([a,b,a,c,a,d],a,mike,Result).
% Result = [mike,b,mike,c,mike,d]
% ?- replace_all([a,b,a,c,a,d],b,foo,Result).
% Result = [a,foo,a,c,a,d]
% ?- replace_all([a,b,a,c,a,d],prolog,logic,Result).

% basecase, if empty list is provided return empty list
replace_all([], _, _, []).

% if head is not X then recursively call it on the tail
replace_all([H|T], X, Y, [H|Result]):- H \= X,
    replace_all(T, X, Y, Result).

% if head = X then dis-regard the head and recrusively call it with % the new head as Y
replace_all([_|Tail], X, Y, Result) :-
        replace_all([Y|Tail], X, Y, Result).

    
