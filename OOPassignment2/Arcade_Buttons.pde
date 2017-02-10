void moveClockwise(){
  beginShape();
  vertex(0, 0);
  vertex(15, 20);
  vertex(0, 40);
  endShape();
  
}

void moveCounterClockwise(){
   beginShape();
  vertex(15, 0);
  vertex(0, 20);
  vertex(15, 40);
  endShape();
  
}

void fire(){
  ellipse(15,15,30,30);
}