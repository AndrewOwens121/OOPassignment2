class Ball {
  int lane=1;
  float x;
  float y;
  float z=1;//radius of ball - simulating distance
  int speed=400;//value decreases to increase ball speed
  boolean alive=true;
  Ball() {
    lane = 0;
    x = 500;
    y = 250;
  }
  void update() {
    if (y>335) {
      x=500;
      y=250;
      z=1;
      Health-=1;
      lane=int(random(0, 3));
      if (speed>200) {
        speed-=15;
      } else {
        speed-=3;
      }
    } else {
      //travel down lane
      if (lane==0) {
        x-=133.3/speed;
        y+=137.5/speed;
        z=z+0.1;
      }
      if (lane==1) {
        //x-=133.3/250;
        y+=137.5/speed;
        z=z+0.1;
      }
      if (lane==2) {
        x+=133.3/speed;
        y+=137.5/speed;
        z=z+0.1;
      }
    }
  }
  void show() {
    fill(255);
    noStroke();
    ellipse(x, y, z, z);
  }
}