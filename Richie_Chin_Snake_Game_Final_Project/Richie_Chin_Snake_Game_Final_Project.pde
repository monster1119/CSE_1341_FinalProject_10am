int w = 30;
int h = 30;
int gbs = 20; //gbs = grid block size
int snakeSize;
int xSpeed;
int ySpeed;
color snakeColor = color(0, 255, 0);
Board myBoard;
Snake mySnake;
Apples theseApples;

void setup() {
  size(600, 600);
  myBoard = new Board();
  mySnake = new Snake();
  theseApples = new Apples();
}

void draw() {
  background(255);
  myBoard.drawBoard();
  mySnake.snake();
  theseApples.apple();
}