boolean validInputNum = false;
String playerMove = "no";

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
  if (moveCounter == 9 && checkComputerWin() == false && checkPlayerWin() == false){
    println("Game over, it was a draw");
    return true;

  } else {
    return false;
  }
}

void userMove(int input){
  if (board[input] == 0){
    drawCircle(input);
    board[input] = 2;
    moveCounter++;
    validInputNum = true;
  }
}

//Weird method that works everytime the key is pressed, instead of using a scanner (processing is bizarre)
//This method calls upon the userMove method, and the key that is pressed is the parameter for that function
void keyPressed() {
  String userInput = key + "";
  if (VALIDINPUTS.indexOf(userInput) >= 0) {
      int userMove = Integer.parseInt(userInput);
      if (checkComputerWin() == false && checkPlayerWin() == false){
        userMove(userMove);
      }
  } else {
      println("Only enter number keys 0-8");
    }

    if (validInputNum == true) {
      checkPlayerWin();
      checkTie();
      playerMove = "no";
      validInputNum = false;
      if (checkPlayerWin() != true){
        computerMove();
        }

    }
}

void computerMove(){
  if (playerMove == "no") {
    int move = int(random(9));
    while (board[move] == 1 || board[move] == 2){
      move = int(random(9));
    }
      drawX(move);
      board[move] = 1;
      playerMove = "yes";
      moveCounter++;
      checkTie();
      checkComputerWin();
      if (checkComputerWin() == false && checkPlayerWin () == false && checkTie() == false){
        println("The game is still in progress");
      }
  }
}





