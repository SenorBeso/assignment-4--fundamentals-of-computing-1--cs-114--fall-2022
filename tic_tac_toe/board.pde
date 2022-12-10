//-----------------------------------
boolean playerMove = false;
boolean validMove = false;
boolean gameOver = false;
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

      if (gameOver == false) {
        playerMove = false;
        computerMove();
      }
    }

}
//====================================
//  void keyPressed(){
//   if(checkTie() == false && checkPlayerWin() == false && checkComputerWin() == false){
//         playerMove();
//         checkPlayerWin();
//         checkComputerWin();
//         moveCounter++;
//         checkTie();
//     } else {
//       println("Invalid move, input another move");
//     }
//       println ("Game is still going");
//  }

// void playerMove(int input){
//     if (board[input] == 0){
//     drawCircle(input);
//   board[key] = 2;
//     moveCounter++;
//     }
// }


// void playerMove(){
//   if(key == 5){
//     drawCircle(key);
//     board[0]=2;
//   } else if (board[0] != 0){
//     println("Invalid move");
//   }
// }

  // int userInput = key;
  // playerMove(userInput);

  // if(checkTie() == false && checkPlayerWin() == false && checkComputerWin() == false){

  //   if (userInput == 0 || userInput == 1 || userInput == 2 || userInput == 3 || userInput == 4 || userInput == 5
  //    || userInput == 6 || userInput == 7 || userInput == 8) {
  //       playerMove(userInput);
  //   } else {
  //     println("Invalid move, input another move");
  //   }
  //   println ("Game is still going");
  // } else {
  //   println("Game over");
  // }
