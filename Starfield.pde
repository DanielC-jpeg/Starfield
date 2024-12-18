Particle[] particle=new Particle[700];
void setup(){
  size(1000,1000);
  for (int i=0;i<particle.length;i++) particle[i]=new Particle();
  particle[0]=new OddballParticle();
}
void draw(){
  background(0);
  for (int i=0;i<particle.length;i++){
    particle[i].move();
    particle[i].show();
  }
}

class Particle
{
  double myX,myY,mySpeed,myAngle;
  int myColor;
  Particle ()
  {
    myX = 400;
    myY = 700;
    myAngle = ((Math.random()*Math.PI)+Math.PI);
    myColor = color((int)(Math.random()*255), (int)(Math.random()*157)+ 97,(int)(Math.random()*100)+140);
    mySpeed = (Math.random()*20)+4;
  }
  void move(){
    myX+=Math.cos(myAngle)*mySpeed;
    myY+=Math.sin(myAngle)*mySpeed;
  }
  void show(){
    noStroke();
    fill(myColor);
 rect(myX,myY,30,30);
  }
}
class OddballParticle extends Particle{
  OddballParticle(){
    myX=myY=500;
   myAngle=Math.random()*2*Math.PI;
    mySpeed=Math.random()*50;
    myColor=color(0,255,0);
  }
  void move(){
    myX+=(int)(Math.random()*20)-1;
    myY+=(int)(Math.random()*20)-1;
  }
  void show(){
    noStroke();
    fill(255);
    rect((float)myX,(float)myY,(float)100,(float)100, (float) 100);
  }
}
