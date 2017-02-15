void track() {
  //undersheet
  fill(0);
  beginShape();
  vertex(300, 375);
  vertex(500, 250);
  vertex(700, 375);
  endShape();
  fill(125, 0, 125, 35);
  //left lane
  beginShape();
  vertex(300, 375);
  vertex(500, 250);
  vertex(433.3, 375);
  endShape();
  //middle lane
  fill(125, 125, 0, 35);
  beginShape();
  vertex(433.3, 375);
  vertex(500, 250);
  vertex(566.6, 375);
  endShape();
  //right lane
  fill(0, 125, 125, 35);
  beginShape();
  vertex(566.6, 375);
  vertex(500, 250);
  vertex(700, 375);
  endShape();
}