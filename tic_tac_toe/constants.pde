  final int CIRCLERADIUS = 150;
  final int WIDTH = 500;
  final int HEIGHT = 500;
  final int COMPUTERMARKER = 1;
  final int PLAYERMARKER = 2;
  int[] board = new int[8];

int[] xSpots = {((WIDTH/3)/2),
((WIDTH/3)/2)*2,
((WIDTH/3)/2)*3,
((WIDTH/3)/2),
((WIDTH/3)/2)*2,
((WIDTH/3)/2)*3,
((WIDTH/3)/2),
((WIDTH/3)/2)*2,
((WIDTH/3)/2)*3
};

int[] ySpots = {((HEIGHT/3)/2),
((HEIGHT/3)/2),
((HEIGHT/3)/2),
((HEIGHT/3)/2),
((HEIGHT/3)/2)*2,
((HEIGHT/3)/2)*3,
((HEIGHT/3)/2),
((HEIGHT/3)/2)*2,
((HEIGHT/3)/2)*3};

//int[] boardXSpots = new int[9];
//boardXSpots[0] = WIDTH;
//boardXSpots[1] = ((WIDTH/3)/2)*2;
//boardXSpots[2] = ((WIDTH/3)/2)*3;
//boardXSpots[3] = (WIDTH/3)/2;
//boardXSpots[4] = ((WIDTH/3)/2)*2;
//boardXSpots[5] = ((WIDTH/3)/2)*3;
//boardXSpots[6] = (WIDTH/3)/2;
//boardXSpots[7] = ((WIDTH/3)/2)*2;
//boardXSpots[8] = ((WIDTH/3)/2)*3;

//int[] boardYSpots = new int[9];
//boardYSpots[0] = (HEIGHT/3)/2;
//boardYSpots[1] = ((HEIGHT/3)/2)*2;
//boardYSpots[2] = ((HEIGHT/3)/2)*3;
//boardYSpots[3] = (HEIGHT/3)/2;
//boardYSpots[4] = ((HEIGHT/3)/2)*2;
//boardYSpots[5] = ((HEIGHT/3)/2)*3;
//boardYSpots[6] = (HEIGHT/3)/2;
//boardYSpots[7] = ((HEIGHT/3)/2)*2;
//boardYSpots[8] = ((HEIGHT/3)/2)*3;
