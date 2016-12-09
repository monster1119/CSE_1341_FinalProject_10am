class Snake {
  int snakeSize;
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
    Snakex.add(15);
    Snakey.add(15);
  }

  void snake() {
    for (int i = 0; i < Snakex.size(); i++) {
      if (!gameOver) {
        fill(snakeColor);
        rect(Snakex.get(i)*gbs, Snakey.get(i)*gbs, gbs, gbs);

        if (millis() >= timeMove) {    
          timeMove = timeMove + timeInc;
          Snakex.add(0, Snakex.get(0) + xDir[dir]);
          Snakey.add(0, Snakey.get(0) + yDir[dir]);
          if (Snakex.get(0) < 0 || Snakex.get(0) >= w || Snakey.get(0) < 0 || Snakey.get(0) >= h) {
            gameOver = true;
          }
          for (int j = 1; j < Snakex.size(); j++) {
            if (Snakex.get(0) == Snakex.get(j) && Snakey.get(0) == Snakey.get(j)) {
              gameOver = true;
            }
          }
          if (Snakex.get(0) == theseApples.appleX && Snakey.get(0) == theseApples.appleY) {
            theseApples.appleX = round(random(0, w-1));
            theseApples.appleY = round(random(0, h-1));
          } else {
            Snakex.remove(Snakex.size()-1);
            Snakey.remove(Snakey.size()-1);
          }
        }
      } else {
        fill(255,0,0);
        textAlign(CENTER);
        textSize(25);
        text("Game Over. Press Space to Restart!", width/2, height/2);
        text(str(Snakex.size()), width/2 - 25, height/2 - 25);
        if (keyPressed && key == ' ') {
          Snakex.clear();
          Snakey.clear();
          Snakex.add(15);
          Snakey.add(15);
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
}