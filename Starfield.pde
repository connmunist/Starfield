Particle [] jp;
Oddball daleader = new Oddball();

PImage bg;
PImage leader;

void setup()
{
  size(500,500);
  background= loadImage("freeza1.png"); 
  leader = loadImage("daleader.png");
  
  jp = new Particle [500];

  for(int i = 0; i < jp.length; i++){
    jp[i] = new Particle();
  }
  for(int i = 0; i < 10;i++)
    jp[i] = new Oddball();

  
}
void draw()
{
 background(0);
 image(bg, 140,140);
 for(int i = 0; i < jp.length; i++){
   jp[i].show();
   jp[i].move();;
 }
  daleader.move();
  daleader.show();
}

class Particle
{
  double myX, myY, mySpeed, myAngle;
  int myColor,mySize;
  
  Particle(){
    myX = 250;
    myY = 250;
    mySpeed = (double)(Math.random()*10);
    myAngle = (double)(Math.random()*6.283);
    myColor = (int)(Math.random()*256);
    mySize = (int)(Math.random()*10+1);
   
  }
  void move () {
  //double z = (double)(Math.random()*8.25);
  myX = myX + (double)(Math.cos(myAngle)* mySpeed);
  myY = myY + (double)(Math.sin(myAngle)* mySpeed);
  if(myX < 0 ||  myX > 500) {
    myX = 250;
    myY = 250;
    myX = myX + (double)(Math.cos(myAngle)* mySpeed);
    myY = myY + (double)(Math.sin(myAngle)* mySpeed);
  }
   if(myY < 0 ||  myY > 500) {
    myX = 250;
    myY = 250;
    myX = myX + (double)(Math.cos(myAngle)* mySpeed);
    myY = myY + (double)(Math.sin(myAngle)* mySpeed);
  }
  //myY = myY + (double)(Math.sin(2.03)*8.25);
   
  }
 
  void show () {
    //fill((int)(Math.random()*256), (int)(Math.random()*256), (int)(Math.random()*256));
    
    fill(myColor);
    ellipse((float) myX,(float) myY,mySize,mySize);
   
  }
}

class Oddball extends Particle //inherits from Particle
{
  Oddball(){
    
  }
  void move(){
  myX = myX + (int)(Math.random()*6)-3;
  myY = myY + (int)(Math.random()*6)-3;
  
  if(myX < 150 ||  myX > 270) {
    myX = 250;
    myY = 250;
    myX = myX + (double)(Math.cos(myAngle)* mySpeed);
    myY = myY + (double)(Math.sin(myAngle)* mySpeed);
  }
   if(myY < 150 ||  myY > 270) {
    myX = 250;
    myY = 250;
    myX = myX + (double)(Math.cos(myAngle)* mySpeed);
    myY = myY + (double)(Math.sin(myAngle)* mySpeed);
  }
 
  //myAngle = 0;
  //mySpeed = 0;
  //mySize = 150;
  //myColor = color((int)(Math.random()*256), (int)(Math.random()*256), (int)(Math.random()*256));
  
  }
  void show (){
    noStroke();
    image(leader, (float)myX,(float)myY, 100,100);
  }
  
}
