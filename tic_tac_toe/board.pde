import java.util.Random;
import java.util.Scanner;

void computerMove(){
  Random rand = new Random();

   int randNum = rand.nextInt(9);
   while (randNum != (2));
   randNum = rand.nextInt(9);
   for (int i = 0; i<9; i++){
     if (i == randNum){
      board[i] = COMPUTERMARKER;
     }
   }
}

void keyPressed(){
if(key==0){
  drawCircle();
}
}
