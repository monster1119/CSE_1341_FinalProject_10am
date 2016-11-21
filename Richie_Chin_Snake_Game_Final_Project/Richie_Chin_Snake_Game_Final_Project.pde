int w = 50;
int h = 50;
int gbs = 30; //gbs = grid block size
int snakeSize;
int xSpeed;
int ySpeed;
color snakeColor = color(0, 255, 0);
Board myBoard;
Snake mySnake;

void setup() {
  size(600, 600);
  myBoard = new Board();
  mySnake = new Snake();
}

void draw() {
  background(255);
  myBoard.drawBoard();
  mySnake.snake();
}

/*
void drawGrid() {
 for (int j =0; j < w; j++) {
 line(j*gbs, 0, j*gbs, height);
 }
 for (int i = 0; i < h; i++) {
 line(0, i*gbs, width, i*gbs);
 }
 }
 */