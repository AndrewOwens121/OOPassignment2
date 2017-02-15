class Star{
  float x;
  float y;
  float z;

  Star() {
    x = random(-200, 200);
    y = random(-125, 125);
    z = random(200);
  }

  void update() {
    z=z-10;
    if (z<0) {
      z=200;
      x = random(-200, 200);
      y = random(-125, 125);
    }
  }

  void show() {
    fill(255);
    noStroke();

    float sx = map(x/z, 0, 1, 0, 400);
    float sy = map(y/z, 0, 1, 0, 400);
    float r  = map(z, 0, 400, 8, 0);
    fill(100, 0, 100, 150);
    ellipse(sx, sy, r, r);
  }
}