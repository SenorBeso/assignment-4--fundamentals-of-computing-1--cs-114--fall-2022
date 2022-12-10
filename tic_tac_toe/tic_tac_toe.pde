void setup() {
  size(500, 500);
  drawBoard();


    // for (int i = 0; i < 10; i++){
      if (checkTie() == false && checkComputerWin() == false && checkPlayerWin() == false){
        computerMove();
      }
      if (checkTie() == false && checkComputerWin() == false && checkPlayerWin() == false){
        playerMove(8);
      }
    // }


}

void draw() {
}
