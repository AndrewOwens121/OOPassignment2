void ArcadeCase(){
  stroke(0);
  fill(0);
  rect(0,0,300,height);
  rect(0,0,width,100);
  rect(0,height-225,width,225);
  rect(700,0,width,height);
  stroke(255);
  fill(255);
 line(0,0,300,100);//lefttopline
 line(0,height,300,height-225);//left bottom line
 line(width,0,width-300,100);//right top line
 line(width,height,width-300,height-225);//right bottom line
 //game border
 noFill();
 rect(300,100,400,275);
 
 //void moveClockwise(){
  pushMatrix();
  translate(640, 465);
  beginShape();
  vertex(0, 0);
  vertex(15, 20);
  vertex(1, 40);
  vertex(0,0);
  endShape();
  popMatrix();
  
  //void moveCounterClockwise(){
  
  pushMatrix();
  translate(610, 465);
  beginShape();
  vertex(15, 0);
  vertex(0, 20);
  vertex(14, 40);
  vertex(15, 0);
  endShape();
  popMatrix();

//void fire(){
  ellipse(320,480,40,30);

}