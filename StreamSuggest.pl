%non med
likes(sudhir, math).
likes(sudhir, physics).
likes(sudhir, chemistry).
likes(sudhir, computer_science).

%pcmb
likes(ram, biology).
likes(ram, physics).
likes(ram, chemistry).
likes(ram, math).

%commerce with math
likes(shyam, accounts).
likes(shyam, business_studies).
likes(shyam, economics).
likes(shyam, math).

%commerce without math
likes(suparna, accounts).
likes(suparna, business_studies).
likes(suparna, economics).
likes(suparna, business_studies).

%med
likes(bhanu, biology).
likes(bhanu, physics).
likes(bhanu, chemistry).
likes(bhanu, biotechnology).

%humanities without math
likes(shashank, history).
likes(shashank, geography).
likes(shashank, psychology).
likes(shashank, political_science).

%humanities with math
likes(shantanu, history).
likes(shantanu, geography).
likes(shantanu, political_science).
likes(shantanu, math).

not(likes(sudhir, biology)).
not(likes(shashank, math)).
not(likes(bhanu, math)).
not(likes(suparna, math)).

study(X, non_med):-
	likes(X, math),
	likes(X, physics),
	likes(X, chemistry),
	likes(X, computer_science),
	not(likes(X, biology)).
	
study(X, med):-
	likes(X, biology),
	likes(X, physics),
	likes(X, chemistry),
	likes(X, computer_science),
	not(likes(X, math)).
	
study(X, pcmb):-
	likes(X, biology),
	likes(X, physics),
	likes(X, chemistry),
	likes(X, math).
	
study(X, commerce_withmath):-
	likes(X, accounts),
	likes(X, business_studies),
	likes(X, economics),
	likes(X, math).

study(X, commerce_withoutmath):-
	likes(X, history),
	likes(X, geography),
	likes(X, psychology),
	likes(X, political_science),
	not(likes(X, math)).
	
study(X, humanities_withmath):-
	likes(X, history),
	likes(X, geography),
	likes(X, political_science),
	likes(X, math).
	
study(X, humanities_withoutmath):-
	likes(X, history),
	likes(X, geography),
	likes(X, psychology),
	likes(X, political_science),
	not(likes(X, math)).
