void drawCircle(){
  circle(84,84,160);

}

void drawBoard (){
  square(0,0,500);
  int width = 500;
  int height = 500;

  line(width*.33,0,width*.33,height);
  line((width*.33)*2,0,(width*.33)*2,height);

  line(0,width*.33,height,width*.33);
  line(0,(width*.33)*2,height,(width*.33)*2);

}

