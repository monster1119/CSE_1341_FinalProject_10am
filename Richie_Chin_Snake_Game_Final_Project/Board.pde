class Board {

  void drawBoard() {
    for (int j =0; j < w; j++) {
      line(j*gbs, 0, j*gbs, height);
    }
    for (int i = 0; i < h; i++) {
      line(0, i*gbs, width, i*gbs);
    }
  }
}