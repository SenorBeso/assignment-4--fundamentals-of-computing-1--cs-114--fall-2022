final int CIRCLERADIUS = 150;
final int WIDTH = 500;
final int HEIGHT = 500;
final int SPOTWIDTH = WIDTH/3;
final int SPOTHEIGHT = HEIGHT/3;
final int COMPUTERMARKER = 1;
final int PLAYERMARKER = 2;
int moveCounter = 0;
int[] board = new int[9];

int[] xSpotsCircle = {
  ((SPOTWIDTH)/2),
  ((SPOTWIDTH)/2)*3,
  ((SPOTWIDTH)/2)*5,
  ((SPOTWIDTH)/2),
  ((SPOTWIDTH)/2)*3,
  ((SPOTWIDTH)/2)*5,
  ((SPOTWIDTH)/2),
  ((SPOTWIDTH)/2)*3,
  ((SPOTWIDTH)/2)*5
};

int[] ySpotsCircle = {
  ((SPOTHEIGHT)/2),
  ((SPOTHEIGHT)/2),
  ((SPOTHEIGHT)/2),
  ((SPOTHEIGHT)/2)*3,
  ((SPOTHEIGHT)/2)*3,
  ((SPOTHEIGHT)/2)*3,
  ((SPOTHEIGHT)/2)*5,
  ((SPOTHEIGHT)/2)*5,
  ((SPOTHEIGHT)/2)*5
};

int[] xSpotsX = {
  0,
  SPOTWIDTH,
  SPOTWIDTH*2,
  0,
  SPOTWIDTH,
  SPOTWIDTH*2,
  0,
  SPOTWIDTH,
  SPOTWIDTH*2
};

int [] ySpotsX = {
  0,
  0,
  0,
  SPOTHEIGHT,
  SPOTHEIGHT,
  SPOTHEIGHT,
  SPOTHEIGHT*2,
  SPOTHEIGHT*2,
  SPOTHEIGHT*2
};

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
  if (moveCounter == 9){
    println("Game over, it was a draw");
    return true;

  } else {
    println("Game is still in progress");
    return false;
  }
}

