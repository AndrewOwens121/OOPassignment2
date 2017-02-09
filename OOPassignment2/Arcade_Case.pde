void ArcadeCase(){
  stroke(255);
  fill(255);
 line(0,0,300,100);//lefttopline
 line(0,height,300,height-225);//left bottom line
 line(width,0,width-300,100);//right top line
 line(width,height,width-300,height-225);//right bottom line
 //game border
 noFill();
 rect(300,100,400,275);
}