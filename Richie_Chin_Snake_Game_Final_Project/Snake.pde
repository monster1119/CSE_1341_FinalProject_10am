class Snake {
  int snakeSize;
  int xSpeed;
  int ySpeed;
  int appleX = 15;
  int appleY = 30;
  color snakeColor = color(0, 255, 0);
  color appleColor = color(255, 0, 0);
  int timeMove = 100;
  int timeInc = 100;
  int dir = 2;
  int newDir;

  ArrayList<Integer> Snakex = new ArrayList<Integer>();
  ArrayList<Integer> Snakey = new ArrayList<Integer>();

  int[] xDir = {0, 0, 1, -1};
  int[] yDir = {1, -1, 0, 0};

  Snake() {
    Snakex.add(20);
    Snakey.add(20);
  }

  void snake() {
    for (int i = 0; i < Snakex.size(); i++) {
      fill(snakeColor);
      rect(Snakex.get(i)*gbs, Snakey.get(i)*gbs, gbs, gbs);
    }

    if (millis() >= timeMove) {    
      Snakex.add(0, Snakex.get(0) + xDir[dir]);
      Snakey.add(0, Snakey.get(0) + yDir[dir]);
      Snakex.remove(Snakex.size()-1);
      Snakey.remove(Snakey.size()-1);
      timeMove = timeMove + timeInc;
    }
    
    //if (Snakex.size() >= w || Snakex.size() <= 0 || Snakey.size() <= 0 || Snakey.size() >= h) {
    //}

fill(255,0,0);
rect(appleX * gbs, appleY * gbs, gbs, gbs);

    keyPressed(); 
    {
      if (key == 's') {
        dir = 0;
      }

      if (key == 'w') {
        dir = 1;
      }

      if (key == 'd') {
        dir = 2;
      }

      if (key == 'a') {
        dir = 3;
      }
    }
  }
}