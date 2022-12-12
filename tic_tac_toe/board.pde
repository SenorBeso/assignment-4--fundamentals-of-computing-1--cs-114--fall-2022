boolean validInputNum = false;
String playerMove = "no";

boolean checkComputerWin(){
  //Checks for row wins
  if (board[0] == 1 && board[1] == 1 && board[2] == 1){
    println("The computer has won the game!");
    return true;

  } else if (board[3] == 1 && board[4] == 1 && board[5] == 1){
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

  } else if (board[2] == 1 && board[5] == 1 && board[8] == 1){
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

  } else if (board[2] == 2 && board[5] == 2 && board[8] == 2){
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

boolean checkTie(){
  if (movesCounter == 9 && checkComputerWin() == false && checkPlayerWin() == false){
    println("Game over, it was a draw");
    return true;

  } else {
    return false;
  }
}

void userMove(int input){
  if (board[input] == 0){
    board[input] = 2;
    movesCounter++;
    validInputNum = true;
    drawCircle(input);
  } else {
    println("Choose another spot, this one is taken");
  }
}

void keyPressed() {
  if (key == '0'){
    int userMove = key;
    if (checkComputerWin() == false && checkPlayerWin() == false && checkTie() == false){
        userMove(0);
    }
  } else if (key == '1'){
    if (checkComputerWin() == false && checkPlayerWin() == false && checkTie() == false){
        userMove(1);
    }
  } else if (key == '2'){
    if (checkComputerWin() == false && checkPlayerWin() == false && checkTie() == false){
        userMove(2);
    }
  } else if (key == '3'){
    if (checkComputerWin() == false && checkPlayerWin() == false && checkTie() == false){
        userMove(3);
    }
  } else if (key == '4'){
    if (checkComputerWin() == false && checkPlayerWin() == false && checkTie() == false){
        userMove(4);
    }
  } else if (key == '5'){
    if (checkComputerWin() == false && checkPlayerWin() == false && checkTie() == false){
        userMove(5);
    }
  } else if (key == '6'){
    if (checkComputerWin() == false && checkPlayerWin() == false && checkTie() == false){
        userMove(6);
    }
  } else if (key == '7'){
    if (checkComputerWin() == false && checkPlayerWin() == false && checkTie() == false){
        userMove(7);
    }
  } else if (key == '8'){
    if (checkComputerWin() == false && checkPlayerWin() == false && checkTie() == false){
        userMove(8);
    }
  } else {
      println("Only enter number keys 0-8");
    }

    if (validInputNum == true) {
      checkTie();
      playerMove = "no";
      validInputNum = false;
      if (checkPlayerWin() == false){
        computerMove();
        }
    }
}

void computerMove(){
    int move = int(random(9));
    while (board[move] == 1 || board[move] == 2){
      move = int(random(9));
    }
      drawX(move);
      board[move] = 1;
      movesCounter++;
      playerMove = "yes";
      if (checkComputerWin() == false && checkPlayerWin () == false && checkTie() == false){
        println("The game is still in progress");
      }
}
