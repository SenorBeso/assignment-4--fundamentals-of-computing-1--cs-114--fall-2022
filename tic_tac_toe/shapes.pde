void drawCircle(int input){
  circle(xSpotsCircle[input],ySpotsCircle[input],CIRCLERADIUS);
}

void drawX (int input){
line(xSpotsX[input], ySpotsX[input], xSpotsX[input]+SPOTWIDTH, ySpotsX[input]+SPOTHEIGHT);
line(xSpotsX[input]+SPOTWIDTH, ySpotsX[input], xSpotsX[input], ySpotsX[input]+SPOTHEIGHT);
}

void drawBoard (){
  square(0,0,500);

  line(WIDTH*.33,0,WIDTH*.33,HEIGHT);
  line((WIDTH*.33)*2,0,(HEIGHT*.33)*2,HEIGHT);

  line(0,WIDTH*.33,HEIGHT,WIDTH*.33);
  line(0,(WIDTH*.33)*2,HEIGHT,(WIDTH*.33)*2);

}
