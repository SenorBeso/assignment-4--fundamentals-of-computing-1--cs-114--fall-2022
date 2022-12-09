void computerMove(){
  int move = int(random(9));

  while (board[move] != 0);
  move = int(random(9));
    drawX(move);
    board[move] = 1;
    moveCounter++;
    checkComputerWin();
    checkTie();
}

 void keyPressed(){
  int userInput = key;
  if(checkTie() == false && checkPlayerWin() == false && checkComputerWin() == false){

    if (userInput == 0 || userInput == 1 || userInput == 2 || userInput == 3 || userInput == 4 || userInput == 5
     || userInput == 6 || userInput == 7 || userInput == 8) {
        playerMove(userInput);
    } else {
      println("Invalid move, input another move");
    }
    checkPlayerWin();
    checkTie();
    println ("Game is still going");
  } else {
    println("Game over");
  }
}

private void playerMove(int input){
    if (board[input] == 0){
    drawCircle(input);
  board[key] = 2;
    moveCounter++;
    }
}

boolean checkTie(){
  if (moveCounter == 9){
    println("Game over, it was a draw");
    return true;
  } else {
    println("Game is still in progress");
    return false;
  }
}

boolean checkPlayerWin(){
  //Checks for row wins
  if (board[0] == 2 && board[1] == 2 && board[2] == 2){
    println("The user (you) have won the game!");
    return true;
  } else if (board[3] == 2 && board[4] == 2 && board[5] == 2){
    println("The user (you) have won the game!");
    return true;
  } else if (board[6] == 2 && board[7] == 2 && board[8] == 2){
    println("The user (you) have won the game!");
    return true;
  //Checks for Column wins
  } else if (board[0] == 2 && board[3] == 2 && board[6] == 2){
    println("The user (you) have won the game!");
    return true;
  } else if (board[1] == 2 && board[4] == 2 && board[7] == 2){
    println("The user (you) have won the game!");
    return true;
  } else if (board[2] == 2 && board[5] == 2 && board[9] == 2){
    println("The user (you) have won the game!");
    return true;
    //Checks diagonol for wins
  } else if (board[0] == 2 && board[4] == 2 && board[8] == 2){
    println("The user (you) have won the game!");
    return true;
  } else if (board[2] == 2 && board[4] == 2 && board[6] == 2){
    println("The user (you) have won the game!");
    return true;
  } else return false;
}

boolean checkComputerWin(){
  //Checks for row wins
  if (board[0] == 1 && board[1] == 1 && board[2] == 1){
    println("The computer has won the game!");
    return true;
  } else if (board[3] == 1 && board[4] == 2 && board[5] == 1){
    println("The computer has won the game!");
    return true;
  } else if (board[6] == 1 && board[7] == 1 && board[8] == 1){
    println("The computer has won the game!");
    return true;
  //Checks for Column wins
  } else if (board[0] == 1 && board[3] == 1 && board[6] == 1){
    println("The computer has won the game!");
    return true;
  } else if (board[1] == 1 && board[4] == 1 && board[7] == 1){
    println("The computer has won the game!");
    return true;
  } else if (board[2] == 1 && board[5] == 1 && board[9] == 1){
    println("The computer has won the game!");
    return true;
    //Checks diagonol for wins
  } else if (board[0] == 1 && board[4] == 1 && board[8] == 1){
    println("The computer has won the game!");
    return true;
  } else if (board[2] == 1 && board[4] == 1 && board[6] == 1){
    println("The computer has won the game!");
    return true;
  } else return false;
}


