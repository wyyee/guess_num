#!/bin/bash

# variable to query database
PSQL="psql --username=freecodecamp --dbname=number_guess -t --no-align -c"


# promp player for username
echo -e "\nEnter your username:"
read USERNAME

# get username data
USERNAME_RESULT=$($PSQL "SELECT username FROM players WHERE username='$USERNAME'")
# get user id
USER_ID_RESULT=$($PSQL "SELECT user_id FROM players WHERE username='$USERNAME'")

# if player is not found
if [[ -z $USERNAME_RESULT ]]
  then
    # greet player
    echo -e "\nWelcome, $USERNAME! It looks like this is your first time here.\n"
    # add player to database
    INSERT_USERNAME_RESULT=$($PSQL "INSERT INTO players(username) VALUES ('$USERNAME')")
    
  else
    
    GAMES_PLAYED=$($PSQL "SELECT COUNT(game_id) FROM games LEFT JOIN players USING(user_id) WHERE username='$USERNAME'")
    BEST_GAME=$($PSQL "SELECT MIN(number_of_guesses) FROM games LEFT JOIN players USING(user_id) WHERE username='$USERNAME'")

    echo Welcome back, $USERNAME\! You have played $GAMES_PLAYED games, and your best game took $BEST_GAME guesses.
fi
