//-----------------------------------
boolean playerMove = false;
boolean validMove = false;
boolean gameOverCheck = false;
//----------------------------

void computerMove(){
  if (playerMove == false) {
    int move = int(random(8));

    while (board[move] != 0){
      move = int(random(8));
    }

      drawX(move);
      board[move] = 1;
      moveCounter++;

      playerMove = true;
      checkComputerWin();
      checkTie();
  }
}



void userMove(int input){
  if (board[input] == 0){
    drawCircle(input);
    board[input] = 2;
    moveCounter++;
    validMove = true;
  }
}
//===================
void keyPressed (){
  String input = "" + key;
  if (VALIDINPUT.indexOf(input) != -1) {
      int userMove = Integer.parseInt(input);
      if (checkComputerWin() == false && checkPlayerWin() == false){
        userMove(userMove);
      }
  } else {
      println("Invalid, enter another key");
    }

    if (validMove == true) {
      validMove = false;

      if (moveCounter > 5) {
        checkPlayerWin();
      }

      if (gameOverCheck == false) {
        playerMove = false;
        computerMove();
      }
    }

}
