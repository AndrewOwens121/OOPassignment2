void highscore(){
  background(0);
 textSize(32);
text("HighScore", 390, 130); 
text(balls[0].highscore, 560, 130); 

textSize(18);
text("Current Score", 410, 235); 
text(balls[0].score, 560, 235); 
  textSize(12);
  text("Press Spacebar to Play Again", 400, 330);
  
  
}