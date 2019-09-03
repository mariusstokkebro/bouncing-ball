// setting up variables
float xposC = 270;
float yposC = 270;
float xspeedC = random(3,8);
float yspeedC = random(3,8);

float xposR = 0;
float yposR =0;
float xspeedR = 0.7;
float yspeedR = 0.7;
float xsizeR = 500;
float ysizeR =500;
float xposSpeedR = 0.5;
float yposSpeedR = 0.5;
//Setting up the application window
void setup(){
  size (500,500);
  
  
}


void draw(){
  //drawing the figures
  clear();
  noFill();
  rect(xposR,yposR,xsizeR,ysizeR);
  noFill();
  stroke(200,21,212);
  fill(250);
  circle(xposC,yposC,20);
  
  //making them move
  xposC += xspeedC;
  yposC += yspeedC;
  xposR += xposSpeedR;
  yposR += yposSpeedR;
  xsizeR += xspeedR;
  ysizeR += yspeedR;
    // making the ball bounce back if it hits the rectangle
  if(xposC >xsizeR){
    xspeedC *= -1; 
    xposC=xsizeR;
  }
  if(yposC >ysizeR || yposC == ysizeR){
    yspeedC *= -1; 
    yposC=ysizeR;
  }
    if(xposC <xposR || xposC == xposR ){
    xspeedC *= -1;
    xposC=xposR;
    
  }
  if(yposC <yposR || yposC == yposR){
    yspeedC *= -1;
    yposC=yposR;
    
    
  }
  //making the rectangle bounce back if it hits the edges of the screen
  if(xsizeR > width){
      xspeedR *= -1;
      xposSpeedR *= -1;
  }
  if(ysizeR > height){
      yspeedR *= -1;
      yposSpeedR *=-1;
  }
    if(xsizeR <50 ){
    xspeedR *= -1; 
    
  }  if(ysizeR <50 ){
    yspeedR *= -1; 
    
  }
    if(xposR <0){
      xposSpeedR  *= -1; 
    }
    if(yposR <0){
      yposSpeedR *= -1; 
    }
}
