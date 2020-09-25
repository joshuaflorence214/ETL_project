DROP TABLE basic_stats;

CREATE TABLE basic_stats (
	id VARCHAR PRIMARY KEY,
	player_name TEXT,
	years_played TEXT,
	current_team TEXT,
	status TEXT
);

SELECT * FROM basic_stats;


DROP TABLE career_stats_passing;

CREATE TABLE career_stats_passing (
	id VARCHAR PRIMARY KEY,
	games_played VARCHAR,
	pass_attempts VARCHAR,
	pass_complete VARCHAR,
	completion_percentage VARCHAR,
	passer_rating  VARCHAR
	
);

SELECT * from basic_stats;

SELECT * from career_stats_passing;

---SELECT premise.id, premise.premise_name, county.county_name
--FROM premise
--INNER JOIN county
--ON premise.county_id = county.county_id;---

SELECT basic_stats.id, basic_stats.player_name, basic_stats.years_played, basic_stats.current_team, basic_stats.status
FROM basic_stats
INNER JOIN career_stats_passing
ON basic_stats.id = career_stats_passing.id;


