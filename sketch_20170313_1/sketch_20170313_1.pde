
Particle part[];

void setup(){
  size(800,800);
  background(0);
  
  noFill();
  stroke(255);
  ellipse(width/2,height/2,50,50);
  ellipse(width/2,height/2,150,150);
  ellipse(width/2,height/2,250,250);
  ellipse(width/2,height/2,450,450);  
  ellipse(width/2,height/2,750,750);
  
  part = new Particle[5];
  part[1] = new Particle(20,50,30);
  part[2] = new Particle(30,150,20);
  part[3] = new Particle(20,250,40);
  part[4] = new Particle(10,450,10);
  part[5] = new Particle(30,750,122);
  
  
}

void draw(){
}

class Particle{
  float centerX = width/2;
  float centerY = height/2;
  
  float size;
  float dist;
  float speed;
  float angle;
 
  Particle(float size,float dist,float speed){
    this.size = size;
    this.dist = dist;
    this.speed = speed;
    
    this.angle = 0;
    
  }
  
  void update(){
    ellipse(dist*cos(radians(angle)),dist*sin(radians(angle)),size,size);
    
    angle++;
  }
  
}