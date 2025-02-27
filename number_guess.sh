#! /bin/bash

PSQL="psql --username=freecodecamp --dbname=number_guess -t --no-align -c"

DISPLAY() {
  echo -e "\n~~~~~ Number Guessing Game ~~~~~\n" 

  # Get username
  echo "Enter your username:"
  read USERNAME

  # Get user ID from database part
  USER_ID=$($PSQL "SELECT u_id FROM users WHERE name = '$USERNAME'")

  if [[ -n $USER_ID ]]; then
    # User exists, get game stats
    GAMES_PLAYED=$($PSQL "SELECT COUNT(*) FROM games WHERE u_id = '$USER_ID'")
    BEST_GUESS=$($PSQL "SELECT COALESCE(MIN(guesses), 1000) FROM games WHERE u_id = '$USER_ID'")

    echo -e "\nWelcome back, $USERNAME! You have played $GAMES_PLAYED games, and your best game took $BEST_GUESS guesses."
  else
    # New user
    echo -e "\nWelcome, $USERNAME! It looks like this is your first time here."

    # Insert new user into database
    INSERTED_TO_USERS=$($PSQL "INSERT INTO users(name) VALUES('$USERNAME')")
    
    # Get new user ID
    USER_ID=$($PSQL "SELECT u_id FROM users WHERE name = '$USERNAME'")
  fi

  GAME
}

GAME() {
  # Generate secret number
  SECRET=$((1 + $RANDOM % 1000))

  # Initialize guess count
  TRIES=0

  echo -e "\nGuess the secret number between 1 and 1000:"

  while true; do
    read GUESS

    # Validate input
    if [[ ! $GUESS =~ ^[0-9]+$ ]]; then
      echo -e "\nThat is not an integer, guess again:"
    elif [[ $GUESS -lt $SECRET ]]; then
      TRIES=$((TRIES + 1))
      echo -e "\nIt's higher than that, guess again:"
    elif [[ $GUESS -gt $SECRET ]]; then
      TRIES=$((TRIES + 1))
      echo -e "\nIt's lower than that, guess again:"
    else
      TRIES=$((TRIES + 1))
      echo -e "\nYou guessed it in $TRIES tries. The secret number was $SECRET. Nice job!"
      
      # Insert game record
      INSERTED_TO_GAMES=$($PSQL "INSERT INTO games(u_id, guesses) VALUES($USER_ID, $TRIES)")

      # Exit the script after the game ends
      exit 0
    fi
  done
}

DISPLAY
 
