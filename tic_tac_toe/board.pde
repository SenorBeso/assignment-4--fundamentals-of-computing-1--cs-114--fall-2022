void computerMove(){
  int move = int(random(8));

  while (board[move] != 0);
  move = int(random(8));
    drawX(move);
    board[move] = 1;
    println("This is board at move " + board[move]);
    moveCounter++;
    checkComputerWin();
    // checkTie();
}

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

void playerMove(int input){
    if (board[input] == 0){
    drawCircle(input);
  board[key] = 2;
    moveCounter++;
    }
}


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



