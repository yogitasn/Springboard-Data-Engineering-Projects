drop database if exists soccergame;
create database soccergame;
use soccergame;

CREATE TABLE IF NOT EXISTS teams(
		team_name VARCHAR(20) PRIMARY KEY NOT NULL,
		home_ground VARCHAR(20),
		home_wins INT,
		home_draws INT, 
		home_defeats INT,
		home_for INT,
		home_against INT,
		away_wins INT,
		away_draws INT,
		away_defeats INT,
		away_for INT,
		away_against INT);

create table IF NOT EXISTS players(
		player_id int PRIMARY KEY NOT NULL,
		team_name VARCHAR(20),
		first_name VARCHAR(20),
		last_name VARCHAR(20),
		position VARCHAR(20),
		goals_scored INT,
		goals_received INT,
		assists INT,
		minutes_played INT,
		yellow_cards_received INT,
		red_cards_received INT,
		FOREIGN KEY (team_name) REFERENCES teams(team_name)
        );

create table IF NOT EXISTS goals_scored(
		goal_id INT PRIMARY KEY NOT NULL,
		game_week INT,
		player_id INT,
		goal_time INT,
		assisted_by INT,
		FOREIGN KEY(player_id) REFERENCES players(player_id));

create table if not EXISTS fixtures(
        recordId INT PRIMARY KEY NOT NULL,
		game_week INT,
		home_team VARCHAR(45),
		away_team VARCHAR(45),
		home_team_score INT,
		away_team_score INT,
		fixture_date DATETIME
);

create table if not EXISTS player_match(
		match_id INT PRIMARY KEY NOT NULL,
		game_week INT,
		player_id INT,
		goals_conceeded INT,
		assists INT,
		mins_played INT,
		yellow_card INT,
		red_card INT,
        FOREIGN KEY (player_id) REFERENCES players(player_id)
        );