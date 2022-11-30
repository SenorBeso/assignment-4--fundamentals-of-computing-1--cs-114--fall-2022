import java.util.Random;

void boardArray(){
  int[] board = new int[8];
  for (int i = 0; i<9 ; i++){
    board[i] = i;
    System.out.println(board[i]);
    
  }
  
  
  
}

void computerMove(){
  Random rand = new Random();
  
   int randNum = rand.nextInt(9);
   while (randNum !=5);
   randNum = rand.nextInt(9);
}
