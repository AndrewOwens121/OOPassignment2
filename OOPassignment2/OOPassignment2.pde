//Student Number : C14363641 
//Name : Andrew Owens
void setup(){
  background(0,255,0);
  size(1000,600);
}

int screen=2;

void draw(){
  println(mouseX,mouseY);
  if (screen == 1)
    {
      //space for splashscreen
    }
  if (screen == 2)
    {
      
      ArcadeCase();//keep this method called last as it is an overlay
    }
  if (screen == 3)
    {
      //space for highscore 
    }
    
    
  
  
}