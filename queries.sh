#! /bin/bash

PSQL="psql --username=freecodecamp --dbname=worldcup --no-align --tuples-only -c"

# Do not change code above this line. Use the PSQL variable above to query your database.

echo -e "\nTotal number of goals in all games from winning teams:"
echo "$($PSQL "SELECT SUM(winner_goals) FROM games")"

echo -e "\nTotal number of goals in all games from both teams combined:"
echo "$($PSQL "SELECT SUM(winner_goals) + SUM(opponent_goals) FROM games")"

echo -e "\nAverage number of goals in all games from the winning teams:"
echo -e "$($PSQL "SELECT AVG(winner_goals) FROM games")"

echo -e "\nAverage number of goals in all games from the winning teams rounded to two decimal places:"
echo -e "$($PSQL "SELECT ROUND(AVG(winner_goals), 2) FROM games")"

echo -e "\nAverage number of goals in all games from both teams:"
echo -e "$($PSQL "SELECT AVG(winner_goals + opponent_goals) FROM games")"

echo -e "\nMost goals scored in a single game by one team:"
echo -e "$($PSQL "SELECT MAX(winner_goals) FROM games")"

echo -e "\nNumber of games where the winning team scored more than two goals:"
echo -e "$($PSQL "SELECT COUNT(game_id) FROM games WHERE winner_goals > 2")"

echo -e "\nWinner of the 2018 tournament team name:"
echo -e "$($PSQL "SELECT teams.name FROM games INNER JOIN teams ON games.winner_id = teams.team_id WHERE year = 2018 AND round = 'Final'")"

echo -e "\nList of teams who played in the 2014 'Eighth-Final' round:"
echo -e "$($PSQL "SELECT DISTINCT(name) FROM teams FULL JOIN games AS winner ON teams.team_id = winner.winner_id FULL JOIN games AS opponent ON teams.team_id = opponent.opponent_id WHERE (opponent.year = 2014 AND opponent.round = 'Eighth-Final') OR (winner.year = 2014 AND winner.round = 'Eighth-Final') ORDER BY name")"

echo -e "\nList of unique winning team names in the whole data set:"
echo -e "$($PSQL "SELECT DISTINCT(teams.name) FROM games INNER JOIN teams ON games.winner_id = teams.team_id ORDER BY teams.name")"

echo -e "\nYear and team name of all the champions:"
echo -e "$($PSQL "SELECT year, teams.name FROM games INNER JOIN teams ON games.winner_id = teams.team_id WHERE round = 'Final' ORDER BY year ASC")"

echo -e "\nList of teams that start with 'Co':"
echo -e "$($PSQL "SELECT DISTINCT(name) FROM teams WHERE name LIKE 'Co%' ORDER BY name")"
