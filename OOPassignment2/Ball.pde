class Ball {
  int lane=1;
  float x;
  float y;
  float z;//radius of ball - simulating distance
  boolean alive=true;
  Ball() {
    lane = 0;
    x = 500;
    y = 250;
    
    Health-=1;
  }
  void update() {
    if (y>335) {
      x=500;
      y=250;
      z=1;
      lane=int(random(0, 3));
    } else {
      //travel down lane
      if (lane==0) {
        x-=133.3/250;
        y+=137.5/250;
        z+=0.1;
      }
      if (lane==1) {
        //x-=133.3/250;
        y+=137.5/250;
        z+=0.1;
      }
      if (lane==2) {
        x+=133.3/250;
        y+=137.5/250;
        z+=0.1;
      }
    }
  }
  void show() {
    fill(255);
    noStroke();
    ellipse(x, y, z, z);
  }
}