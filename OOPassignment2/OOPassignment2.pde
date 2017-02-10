//Student Number : C14363641 
//Name : Andrew Owens
Star[] stars = new Star[500];

void setup() {
  background(0, 255, 0);
  size(1000, 600);
  for(int i = 0;i <stars.length;i++){
   stars[i] = new Star();
 }
}

int screen=2;
boolean[] toggled = new boolean[3];



void draw() {
  println(mouseX, mouseY);
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

    ArcadeCase();//keep this method called last as it is an overlay
  }
  if (screen == 3)
  {
    //space for highscore
  }
  toggled[0]=false;
  toggled[1]=false;
  toggled[2]=false;
}
void keyPressed() {
  if (keyCode == ' ') {
    toggled[0]=true;
  } else {
    toggled[0]=false;
  }
  if (keyCode == LEFT) {
    toggled[1]=true;
  } else {
    toggled[1]=false;
  }
  if (keyCode == RIGHT) {
    toggled[2]=true;
  } else {
    toggled[2]=false;
  }
}