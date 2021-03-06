void title() {
  //S- Space
  line(280, 20, 280, 10);
  line(280, 10, 170, 10);
  line(170, 10, 280, 75);
  line(280, 75, 170, 40);
  line(170, 40, 170, 30);
  //P-Space
  line(300, 50, 340, 30);
  line(340, 30, 300, 10);
  line(300, 10, 300, 90);
  //A-Space
  line(345, 90, 370, 10);
  line(370, 10, 395, 90);
  line(357, 53, 377, 53);
  //C-Space
  line(440, 10, 395, 45);
  line(395, 45, 440, 90);
  //E-Space
  line(495, 20, 495, 10);
  line(495, 10, 450, 10);
  line(450, 10, 450, 90);
  line(450, 90, 495, 90);
  line(495, 90, 495, 80);
  line(450, 50, 475, 50);
  line(475, 45, 475, 55);

  //Hyphen
  line(490, 50, 510, 50);

  //S-Slidr
  line(540, 20, 540, 10);
  line(540, 10, 505, 10);
  line(505, 10, 540, 90);
  line(540, 90, 505, 90);
  line(505, 90, 505, 80);

  //L-Slidr
  line(545, 10, 555, 10);
  line(550, 10, 550, 90);
  line(550, 90, 595, 90);
  line(595, 95, 595, 85);

  //I-Slidr
  line(600, 5, 600, 15);
  line(600, 10, 645, 10);
  line(645, 5, 645, 15);
  line(622.5, 10, 622.5, 90);
  line(600, 95, 600, 85);
  line(600, 90, 645, 90);
  line(645, 95, 645, 85);

  //D-Slidr
  line(650, 10, 650, 90);
  line(650, 90, 690, 50);
  line(690, 50, 650, 10);
  line(690, 45, 690, 55);

  //R-Slidr
  line(700, 90, 700, 10);
  line(700, 10, 825, 10);
  line(825, 10, 700, 50);
  line(700, 50, 735, 75);

  //Health Bar
  if (balls[0].Health>=1 && screen==2) {
    pushMatrix();
    translate(300, 375);
    noStroke();
    fill(0, 255, 0, 80);
    beginShape();
    vertex(5, 5);
    vertex(13.3, 5);
    vertex(21.66, 13.3);
    vertex(29.9, 5);
    vertex(38, 5);
    vertex(38, 13.33);
    vertex(21.66, 30);
    vertex(5, 13.33);
    vertex(5, 5);
    endShape();
    popMatrix();
    if (balls[0].Health>=2) {
      pushMatrix();
      translate(335, 375);
      noStroke();
      fill(0, 255, 0, 80);
      beginShape();
      vertex(5, 5);
      vertex(13.3, 5);
      vertex(21.66, 13.3);
      vertex(29.9, 5);
      vertex(38, 5);
      vertex(38, 13.33);
      vertex(21.66, 30);
      vertex(5, 13.33);
      vertex(5, 5);
      endShape();
      popMatrix();
    }
    if (balls[0].Health>=3) {
      pushMatrix();
      translate(370, 375);
      noStroke();
      fill(0, 255, 0, 80);
      beginShape();
      vertex(5, 5);
      vertex(13.3, 5);
      vertex(21.66, 13.3);
      vertex(29.9, 5);
      vertex(38, 5);
      vertex(38, 13.33);
      vertex(21.66, 30);
      vertex(5, 13.33);
      vertex(5, 5);
      endShape();
      popMatrix();
    }
  }
  //Bullets bar
  if (balls[0].bullets>=1 && screen==2) {
    fill(127, 80);
    pushMatrix();
    translate(680, 375);
    beginShape();
    vertex(15, 5);
    vertex(22.5, 13);
    vertex(7.5, 13);
    endShape();
    rect(7.5, 15, 15, 15);
    popMatrix();
    if (balls[0].bullets>=2) {
      //fill(127);
      pushMatrix();
      translate(660, 375);
      beginShape();
      vertex(15, 5);
      vertex(22.5, 13);
      vertex(7.5, 13);
      endShape();
      rect(7.5, 15, 15, 15);
      popMatrix();
      if (balls[0].bullets>=3) {
        // fill(127);
        pushMatrix();
        translate(640, 375);
        beginShape();
        vertex(15, 5);
        vertex(22.5, 13);
        vertex(7.5, 13);
        endShape();
        rect(7.5, 15, 15, 15);
        popMatrix();
      }
    }
  }
  //Score
  if (screen==2) {
    textSize(14);
    text("SCORE", 475, 400);
    text(balls[0].score, 530, 400);
  }
}