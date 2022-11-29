void drawBoard (){
  square(0,0,500);
  int width = 500;
  int height = 500;

  line(width/3,0,width/3,height);
  line((width/3)*2,0,(width/3)*2,height);

  line(0,width/3,height,width/3);
  line(0,(width/3)*2,height,(width/3)*2);

}
