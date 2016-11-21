class Snake {
  int snakeSize;
  int xSpeed;
  int ySpeed;
  color snakeColor = color(0, 255, 0);
  int timeMove = 300;
  int timeInc = 300;
  int dir = 2;

  ArrayList<Integer> Snakex = new ArrayList<Integer>();
  ArrayList<Integer> Snakey = new ArrayList<Integer>();

  int[] xDir = {0, 0, 1, -1};
  int[] yDir = {1, -1, 0, 0};

  void snake() {
    Snakex.add(10);
    Snakey.add(10);
    for (int i = 0; i < Snakex.size(); i++) {
      fill(snakeColor);
      rect(Snakex.get(i)*gbs, Snakey.get(i)*gbs, gbs, gbs);
    }
    if (millis() > timeMove) {    
      //Snakex.add(10);
      //Snakey.add(10);
      Snakex.add(0, Snakex.get(0) + xDir[dir]);
      Snakey.add(0, Snakey.get(0) + yDir[dir]);
      Snakex.remove(Snakex.size()-1);
      Snakey.remove(Snakey.size()-1);
      timeMove = timeMove + timeInc;
    }
  }
}