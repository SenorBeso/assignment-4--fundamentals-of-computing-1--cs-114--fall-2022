final int CIRCLERADIUS = 150;
final int WIDTH = 500;
final int HEIGHT = 500;
final int SPOTWIDTH = WIDTH/3;
final int SPOTHEIGHT = HEIGHT/3;
final int COMPUTERMARKER = 1;
final int PLAYERMARKER = 2;
int[] board = new int[8];

int[] xSpotsCircle = {((WIDTH/3)/2),
  ((WIDTH/3)/2)*2,
  ((WIDTH/3)/2)*3,
  ((WIDTH/3)/2),
  ((WIDTH/3)/2)*2,
  ((WIDTH/3)/2)*3,
  ((WIDTH/3)/2),
  ((WIDTH/3)/2)*2,
  ((WIDTH/3)/2)*3
};

int[] ySpotsCircle = {((HEIGHT/3)/2),
  ((HEIGHT/3)/2),
  ((HEIGHT/3)/2),
  ((HEIGHT/3)/2),
  ((HEIGHT/3)/2)*2,
  ((HEIGHT/3)/2)*3,
  ((HEIGHT/3)/2),
  ((HEIGHT/3)/2)*2,
  ((HEIGHT/3)/2)*3
};

int[] xSpotsX = {
  0,
  SPOTWIDTH,
  SPOTWIDTH*2,
  0,
  SPOTWIDTH,
  SPOTWIDTH*2,
  0,
  SPOTWIDTH,
  SPOTWIDTH*2
};

int [] ySpotsX = {
  0,
  0,
  0,
  SPOTHEIGHT,
  SPOTHEIGHT,
  SPOTHEIGHT,
  SPOTHEIGHT*2,
  SPOTHEIGHT*2,
  SPOTHEIGHT*2
};

