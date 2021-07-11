%Facts

%supereffective(X, Y) implies that type X is super effective vs type Y
supereffective(fire, bug).
supereffective(fire, ice).
supereffective(fire, grass).
supereffective(fire, steel).
supereffective(water, fire).
supereffective(water, rock).
supereffective(water, ground).
supereffective(electric, water).
supereffective(electric, flying).
supereffective(grass, rock).
supereffective(grass, ground).
supereffective(grass, water).
supereffective(ice, flying).
supereffective(ice, dragon).
supereffective(ice, ground).
supereffective(ice, grass).
supereffective(fighting, normal).
supereffective(fighting, rock).
supereffective(fighting, steel).
supereffective(fighting, dark).
supereffective(fighting, ice).
supereffective(poison, grass).
supereffective(ground, rock).
supereffective(ground, steel).
supereffective(ground, fire).
supereffective(ground, electric).
supereffective(ground, poison).
supereffective(flying, bug).
supereffective(flying, fighting).
supereffective(flying, grass).
supereffective(psychic, poison).
supereffective(psychic, fighting).
supereffective(bug, psychic).
supereffective(bug, grass).
supereffective(bug, dark).
supereffective(rock, bug).
supereffective(rock, fire).
supereffective(rock, ice).
supereffective(rock, flying).
supereffective(ghost, ghost).
supereffective(ghost, psychic).
supereffective(dragon, dragon).
supereffective(dark, psychic).
supereffective(dark, ghost).
supereffective(steel, rock).
supereffective(steel, ice).

%Rules

%hypereffective(X, Y, Z) implies that type X can KO a Y, Z type
hypereffective(X, Y, Z):-supereffective(X, Y), 
                         supereffective(X, Z),
                         not(Y = Z).