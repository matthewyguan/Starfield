Particle bob;
void setup()
{
  size(1000,1000);
  bob = new Particle();
}
void draw()
{
  bob.move();
  bob.show();
}
class Particle
{
  double myX, myY, myA, myS;
  int myC;
  Particle() {
    myX = 500;
    myY = 500;
    myC = color((int)(Math.random()*256),(int)(Math.random()*256),(int)(Math.random()*256));
    myA = (Math.random()*360);
    myS = Math.random()*2 + 1;
  }
  
  void move() {
    myX += Math.cos(myA)*myS;
    myY += Math.sin(myA)*myS;
  }
  
  void show() {
    fill(myC);
    ellipse((float)myX, (float)myY, (float)10, (float)10);
  }
}

class OddballParticle //inherits from Particle
{
  //your code here
}
