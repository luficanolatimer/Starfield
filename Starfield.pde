Particle [] joe = new Particle[100];
void setup()
{
  size(400, 400);
  for (int i = 0; i < joe.length; i++) 
    joe [i] = new Particle();
  joe[0] = new OddballParticle();
}

void draw()
{
  for (int i = 0; i < joe.length; i++) {
    joe[i].move();
    joe[i].show();
  }
}
class Particle
{
  int partColor;
  double myX, myY, speed, angle;
  Particle() {
    myX = 200;
    myY = 200;
    angle = Math.random()*2*Math.PI;
    speed = 1;
    partColor = color((int)(Math.random()*256), (int)(Math.random()*256), (int)(Math.random()*256));
  }
  void show() {
    fill(partColor);
    ellipse((int)myX, (int)myY, 5, 5);
  }
  void move () {
    myX = myX + (double)(Math.cos(angle)*speed);
    myY = myY + (double)(Math.sin(angle)*speed);
  }
}
class OddballParticle extends Particle //inherits from Particle
  {
   void show() {
    ellipse((int)myX, (int)myY, 15, 15); 
   }
  }
