edge('Makkah', 'Madinah').
edge('Madinah', 'Makkah').
edge('Madinah', 'Taif').
edge('Madinah', 'Tabuk').
edge('Tabuk', 'Taif').
edge('Taif', 'Tabuk').
edge('Taif', 'Dammam').
edge('Dammam', 'Qatif').
edge('Qatif', 'Dammam').
edge('Qatif', 'Madinah').
edge('Dammam', 'Riyadh').
edge('Riyadh', 'Dammam').
edge('Makkah', 'Riyadh').

travel(From, To, Path) :-
    travel_path(From, To, [From], ReversePath),
    reverse(ReversePath, Path).

travel_path(To, To, Visited, Visited).

travel_path(From, To, Visited, Path) :-
    edge(From, Next),
    \+ member(Next, Visited),
    travel_path(Next, To, [Next|Visited], Path).
