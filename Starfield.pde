Particle[] bob = new Particle[1000];
void setup()
{
  size(800, 800);
  frameRate(15);
    for(int i = 0; i < bob.length; i++){
    bob[0] = new oddBallParticle();
    bob[i] = new Particle();
    }
}
void draw()
{
  background(0);
  for(int i = 0; i < bob.length; i++){
    bob[i].move();
    bob[i].show();
  }
  bob[0].show();
    bob[0].move();
}
class Particle
{
  double opacity, x, y, speed, angle;
  int r, size;
  Particle(){
    x = y = 400;
    speed = Math.random() * 10;
    size = 5;
    angle = Math.random() * 2 * Math.PI;
  }
  void move(){
    x+=speed*Math.cos(angle);
    y+=speed*Math.sin(angle);
  }
  void show(){
    r = (int)Math.random() * 256;
    ellipse((float)x, (float)y, size, size);
    opacity += 255/dist((float)x, (float)y, 200, 200);
    fill(r, 255, 255, (float)opacity);
  }
}
class oddBallParticle extends Particle
{
  oddBallParticle(){
    x = y = 400;
    speed = 0;
    size = 20;
  }
  void show(){
   ellipse((float)x, (float)y, size, size);
  }
  void move(){
    if(mouseX > x){
    x += (int)(Math.random()*20-4); 
    y += (int)(Math.random()*20-10); 
   }
   else{
    x += (int)(Math.random()*20-16);
    y += (int)(Math.random()*20-10); 
   }
   if(mouseY > y){
    y += (int)(Math.random()*20-4); 
    x += (int)(Math.random()*20-10); 
   }
   else{
    y += (int)(Math.random()*20-16);
    x += (int)(Math.random()*20-10); 
   }
   }
}


