class Ball {
  float x;
  float y;
  float z;//radius of ball - simulating distance
  Ball() {
    x = 500;
    y = 250;
    z = 0;
  }
  void update() {
    if (y>335) {
      x=500;
      y=250;
    } else {
      //travel down lane
    }
  }
  void show() {
    fill(255);
    noStroke();
    ellipse(x, y, z, z);
  }
}