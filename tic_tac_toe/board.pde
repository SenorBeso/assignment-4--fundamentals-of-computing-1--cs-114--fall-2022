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


