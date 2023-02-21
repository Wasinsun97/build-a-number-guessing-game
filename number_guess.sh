#!/bin/bash
PSQL="psql --username=freecodecamp --dbname=number_guess -t --no-align -c"

echo -e "\nEnter your username:"
read USERNAME

# get user from DB
USER_ID=$($PSQL "SELECT user_id FROM users WHERE user_name = '$USERNAME'")
# if not found
if [[ -z $USER_ID ]]
then
  # insert new user
  INSERT_USER=$($PSQL "INSERT INTO users(user_name) VALUES('$USERNAME')")
  # show greeting message
  echo -e "\nWelcome, $USERNAME! It looks like this is your first time here."
  USER_ID=$($PSQL "SELECT user_id FROM users WHERE user_name = '$USERNAME'")
else
  # if user found, display welcome back message
  USER_INFO=$($PSQL "SELECT COUNT(game_id), MIN(attempt) FROM games WHERE user_id =$USER_ID")
  DB_NAME=$($PSQL "SELECT user_name FROM users WHERE user_id = $USER_ID")
  echo $USER_INFO | while IFS="|" read GAME_PLAYED BEST_GAME
  do
    echo -e "\nWelcome back, $DB_NAME! You have played $GAME_PLAYED games, and your best game took $BEST_GAME guesses."
  done
fi

RANDOM_NUMBER() {
  if [[ ! $1 ]]
  then
    RANDOM_NUM=$(( $RANDOM % 1000 + 1 ))
  else
    RANDOM_NUM=$1
  fi
  if [[ ! $2 ]]
  then
    COUNT=0
  else
    COUNT=$2
  fi
  if [[ ! $1 ]]
  then
    echo -e "\nGuess the secret number between 1 and 1000:"
  fi
  read USER_NUM
  if [[ ! $USER_NUM =~ ^[0-9]*$ ]]
  then
    echo -e "\nThat is not an integer, guess again:"
    ((COUNT++))
    RANDOM_NUMBER $RANDOM_NUM $COUNT
  elif [[ $USER_NUM < $RANDOM_NUM ]]
  then
    echo -e "\nIt's higher than that, guess again:"
    ((COUNT++))
    RANDOM_NUMBER $RANDOM_NUM $COUNT
  elif [[ $USER_NUM > $RANDOM_NUM ]]
  then
    echo -e "\nIt's lower than that, guess again:"
    ((COUNT++))
    RANDOM_NUMBER $RANDOM_NUM $COUNT
  else
    ((COUNT++))
    INSERT_GAME=$($PSQL "INSERT INTO games(user_id, attempt) VALUES ($USER_ID, $COUNT)")
    echo -e "\nYou guessed it in $COUNT tries. The secret number was $RANDOM_NUM. Nice job!"
  fi
}

RANDOM_NUMBER
