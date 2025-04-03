CREATE DATABASE 27MARCH;
/*Group By:

SELECT count(player_name) as no_of_players, country from football_info Group by country;

select count(goal) as no_of_goals, club from football_info
group by cLuB;

SELECT max(matches) as no_of_matches, country from football_info
group by country;

SELECT min(yellow_card) as min_cards, position from football_info
group by position;

select avg(matches) as avg_matches, country from football_info
group by country;


Having clause:

SELECT max(matches) as no_of_matches, country from football_info
group by country having no_of_matches > 500;

DISTINCT:

SELECT DISTINCT(position) from football_info;

/ORDER/
SELECT DISTINCT FROM WHERE GROUP BY HAVING; */