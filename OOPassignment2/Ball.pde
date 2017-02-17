class Ball {
  int lane=1;//which lane the ball will come down
  float x;
  float y;
  float z=1;//radius of ball - simulating distance
  int bullets=3;
  int Health =3;
  int speed=200;//value decreases to increase ball speed
  boolean[] COD = new boolean[2];//Cause of death , 0=health , 1 = bullets
  boolean alive=true;//variable to determine if user shot the target(ball) or not

  Ball() {
    lane = 0;
    x = 500;
    y = 250;
  }
  void update() {
    if (Health>0 && bullets > 0) {//if game isnt over
    if(y>335 && alive == true){//if ball reaches end of track alive -1 health
        Health-=1;
        }
      if (y>335 || alive==false) { //if ball has been killed and reaches end of course
        x=500;
        y=250;
        z=1;
        //Health-=1;
        
        alive = true;
        lane=int(random(0, 3));
        if (speed>200) {
          speed-=15;
        } else if (speed>50) {
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
    }else{
     screen=3; 
    }
  }
  void show() {
    fill(255);
    noStroke();
    ellipse(x, y, z, z);
  }

  void collision() {
    if (lane == screenpos && toggled[0] == true) {//if user shoots and hits ball
      alive=false;
    }else if (lane != screenpos && toggled[0] == true){//if user shoots and misses ball
     bullets-=1; 
    }
  }
}