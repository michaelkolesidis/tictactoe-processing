class Cell {
  float x, y, w, h;
  float state;
  boolean player;

  Cell(float tempX, float tempY, float tempW, float tempH, float tempAngle) {
    x = tempX; 
    y = tempY;
    w = tempW;
    h = tempH;
    state = 0;
  }

  void display() {
    line(100, 0, 100, height);
    line(200, 0, 200, height);
    line(0, 100, width, 100);
    line(0, 200, width, 200);

    noFill();
    stroke(0);
    if (state == 0) {
      // Do nothing
    }
    if (state == 1) {
      ellipse(x+w/2, y+h/2, 100, 100);
    }
    if (state ==2) {
      line(x, y, x+w, y+h);
      line(x+w, y, x, y+h);
    }
  }

  void click(float mx, float my) {
    if (mx > x && mx < x + w && my > y && my < y +h) {
      state = (state + 1) % 3;
      println(state);
    }
  }
}
