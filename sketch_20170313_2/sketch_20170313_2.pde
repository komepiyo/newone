
Particle part[];

void setup(){
  size(800,800);
  background(0);
  
  noFill();
  stroke(255);
  
  part = new Particle[5];
  part[0] = new Particle(20,50,random(30,100));
  part[1] = new Particle(30,150,random(30,100));
  part[2] = new Particle(20,250,random(30,100));
  part[3] = new Particle(10,450,random(30,100));
  part[4] = new Particle(30,750,random(30,100));
  
  
}

void draw(){
  fill(25,250);
  rect(0,0,width,height);
  
  noFill();
  stroke(255,50);
  ellipse(width/2,height/2,50,50);
  ellipse(width/2,height/2,150,150);
  ellipse(width/2,height/2,250,250);
  ellipse(width/2,height/2,450,450);  
  ellipse(width/2,height/2,750,750);
  
  for(int i=0;i<part.length;i++){
    part[i].update();
  }
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
    stroke(255,150);
    ellipse(centerX + dist/2*cos(radians(angle)),
            centerY + dist/2*sin(radians(angle)),
            size,size);
    
    this.angle+=speed/100;
  }
  
}