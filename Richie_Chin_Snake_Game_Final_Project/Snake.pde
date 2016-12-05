class Snake {
  int snakeSize;
  int xSpeed;
  int ySpeed;
  color snakeColor = color(0, 255, 0);
  color appleColor = color(255, 0, 0);
  int timeMove = 100;
  int timeInc = 100;
  int appleX = 12;
  int appleY = 10;
  int dir = 2;
  int newDir;
  boolean gameOver = false;

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
      timeMove = timeMove + timeInc;
      Snakex.add(0, Snakex.get(0) + xDir[dir]);
      Snakey.add(0, Snakey.get(0) + yDir[dir]);
      if (Snakex.get(0) < 0 || Snakex.get(0) > 600 || Snakey.get(0) < 0 || Snakex.get(0) > 600) {
        gameOver = true;
      }
      if (Snakex.get(0) == theseApples.appleX && Snakey.get(0) == theseApples.appleY) {
        theseApples.appleX = round(random(0, w-1));
        theseApples.appleY = round(random(0, h-1));
      } else {
        Snakex.remove(Snakex.size()-1);
        Snakey.remove(Snakey.size()-1);
      }
    } else {
      fill(0);
      textAlign(CENTER);
      textSize(25);
      text("Game Over. Press Space to Restart!", width/2, height/2);
      if (keyPressed && key == ' ') {
        Snakex.clear();
        Snakey.clear();
        Snakex.add(20);
        Snakey.add(20);
        gameOver = false;
      }
    }

    keyPressed(); 
    {
      if (key == 's' && dir != 1) {
        dir = 0;
      }

      if (key == 'w' && dir != 0) {
        dir = 1;
      }

      if (key == 'd' && dir != 3) {
        dir = 2;
      }

      if (key == 'a' && dir != 2) {
        dir = 3;
      }
    }
  }
}