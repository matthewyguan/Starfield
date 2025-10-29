Particle[] bob;
void setup()
{
  size(1000,1000);
  bob = new Particle[250];
  bob[0] = new OddballParticle();
  for (int x = 1; x <= bob.length - 1; x++) {
    bob[x] = new Particle();
  }
}
void draw()
{
  background(#EAD7D7);
  for (int x = 0; x <= bob.length - 1; x =  x + 1) {
    bob[x].show();
    bob[x].move();
    bob[x].funny();
  }
}
class Particle
{
  double myX, myY, myA, myS, cool;
  int myC;
  Particle() {
    myX = 500;
    myY = 500;
    myC = color((int)(Math.random()*256),(int)(Math.random()*256),(int)(Math.random()*256));
    myA = (Math.random()*2*(Math.PI));
    myS = Math.random()*2 + 1;
  }
  
  void move() {
    if (myS < 3){
      myX += Math.cos(myA)*myS;
      myY += Math.sin(myA)*myS;
    }
  }
  void funny() {
    myA = myA;
  }
  void show() {
    fill(myC);
    ellipse((float)myX, (float)myY, (float)10, (float)10);
  }
}

class OddballParticle extends Particle//inherits from Particle
{
  
  OddballParticle() {
    myX = 500;
    myY = 500;
    myC = color((int)(Math.random()*256),(int)(Math.random()*256),(int)(Math.random()*256));
    myA = 0;
    myS = 2;
  }
  void funny() {
    cool = Math.sqrt((myX-500)*(myX-500) + (myY-500)*(myY-500));
    myA = cool;
  }
  void show() {
    fill(myC);
    ellipse((float)myX, (float)myY, (float)50, (float)50);
  }
}
