void Ship() {
  //Drawing for position 0
  if (screenpos == 0) {
    if(toggled[0]==true){
     fill(255,0,0);
     noStroke();
     ellipse(415,335,5,5);
     fill(0, 125, 125, 35);
    }
    beginShape();
    vertex(415, 335);
    vertex(350, 360);
    vertex(410, 360);
    endShape();
  }
  //Drawing for position 1
  if (screenpos == 1) {
    if(toggled[0]==true){
     fill(255,0,0);
     noStroke();
     ellipse(500,335,5,5);
     fill(0, 125, 125, 35);
    }
    beginShape();
    vertex(500, 335);
    vertex(470, 360);
    vertex(530, 360);
    endShape();
  }
  //Drawing for position 2
  if (screenpos == 2) {
    if(toggled[0]==true){
     fill(255,0,0);
     noStroke();
     ellipse(585,335,5,5);
     fill(0, 125, 125, 35);
    }
    beginShape();
    vertex(585, 335);
    vertex(590, 360);
    vertex(650, 360);
    endShape();
  }
}