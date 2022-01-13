/*
Stream Suggestion System 
Made By: Mohammed Sohaib Rasul

Given the interests of a student this program will help suggest suitable streams and subjects for students going to class 11

Just enter the name of the student and the stream you want to check in the format study(student_name, stream). if you want to check if that stream is suitable.
Or enter study(student_name, X). this will return the streams which are suitable from the pool, type a semicolon to see if more than 1 stream is suitable.
The program will return Yes or No or the name of the stream based on the subjects of interest of the student.

Subject pool->
non_med[physics, chemistry, math, computer science].
med[physics, chemistry, biology, biotechnology,].
commerce_withoutmath[accounts, business studies, economics, ,legal studies].
commerce_withmath[accounts, business studies, economics, math].
humanities_withoutmath[political science, geography, history, psychology].
humanities_withmath[political science, geography, history, math].
pcmb[physics, chemistry, math, biology].
*/

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
