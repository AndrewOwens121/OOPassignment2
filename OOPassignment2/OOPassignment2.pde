//Student Number : C14363641 
//Name : Andrew Owens
Star[] stars = new Star[500];
Ball[] balls = new Ball[2];

void setup() {
  background(0, 255, 0);
  size(1000, 600);
  for (int i = 0; i <stars.length; i++) {
    stars[i] = new Star();
  }
  for (int i = 0; i <balls.length; i++) {
    balls[i] = new Ball();
  }
}
//GLOBAL VARIABLES
int Health =5;
int screenpos=1;//controls position of ship , left lane =0 , middle =1 , right =2
int screen=2;
boolean[] toggled = new boolean[3];

void draw() {
  println(balls[0].speed);
  if (screen == 1)
  {
    //space for splashscreen
  }
  if (screen == 2)
  {
    background(0);
    pushMatrix();
    translate(500, 300);
    for (int i=0; i<stars.length; i++) {
      stars[i].update(); 
      stars[i].show();
    }
    popMatrix();

    track();
    Ship();
    ArcadeCase();//keep this method called last as it is an overlay
    title();
     balls[0].update(); 
     balls[0].show();
    
    
  }
  if (screen == 3)
  {
    //space for highscore
  }
  toggled[0]=false;
  toggled[1]=false;
  toggled[2]=false;
}

//KEYCONTROLS
void keyPressed() {
  if (keyCode == ' ') {
    toggled[0]=true;
  } else {
    toggled[0]=false;
  }
  if (keyCode == LEFT) {
    toggled[1]=true;
    if (screenpos>0) {
      screenpos--;
    }
  } else {
    toggled[1]=false;
  }
  if (keyCode == RIGHT) {
    toggled[2]=true;
    if (screenpos<2) {
      screenpos++;
    }
  } else {
    toggled[2]=false;
  }
}