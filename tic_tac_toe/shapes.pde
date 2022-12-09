void drawCircle(int input){
  circle(xSpots[input],ySpots[input],CIRCLERADIUS);
  println(input);
}

void drawX (int input){


}

void drawBoard (){
  square(0,0,500);

  line(WIDTH*.33,0,WIDTH*.33,HEIGHT);
  line((WIDTH*.33)*2,0,(HEIGHT*.33)*2,HEIGHT);

  line(0,WIDTH*.33,HEIGHT,WIDTH*.33);
  line(0,(WIDTH*.33)*2,HEIGHT,(WIDTH*.33)*2);

}
