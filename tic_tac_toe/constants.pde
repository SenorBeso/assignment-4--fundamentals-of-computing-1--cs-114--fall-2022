final int CIRCLERADIUS = 150;
final int WIDTH = 500;
final int HEIGHT = 500;
final int SPOTWIDTH = WIDTH/3;
final int SPOTHEIGHT = HEIGHT/3;
final int COMPUTERMARKER = 1;
final int PLAYERMARKER = 2;
int moveCounter = 0;
 String userInput = key + "";
final String VALIDINPUTS = "8" + "7" + "6" + "5" + "4" + "3" + "2" + "1" + "0";
int[] board = new int[9];

int[] xSpotsCircle = {
  ((SPOTWIDTH)/2),
  ((SPOTWIDTH)/2)*3,
  ((SPOTWIDTH)/2)*5,
  ((SPOTWIDTH)/2),
  ((SPOTWIDTH)/2)*3,
  ((SPOTWIDTH)/2)*5,
  ((SPOTWIDTH)/2),
  ((SPOTWIDTH)/2)*3,
  ((SPOTWIDTH)/2)*5
};

int[] ySpotsCircle = {
  ((SPOTHEIGHT)/2),
  ((SPOTHEIGHT)/2),
  ((SPOTHEIGHT)/2),
  ((SPOTHEIGHT)/2)*3,
  ((SPOTHEIGHT)/2)*3,
  ((SPOTHEIGHT)/2)*3,
  ((SPOTHEIGHT)/2)*5,
  ((SPOTHEIGHT)/2)*5,
  ((SPOTHEIGHT)/2)*5
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