Arrow ar;


void setup(){
  size(800,600);
  background(0);
  
  ar = new Arrow();
  
}

void draw(){
  ar.update();
}

class Arrow{
  
  float topx,topy;
  color col;
  float angle;
  float direction;
  
  Arrow(){
    topx = random(width);
    topy = 0;
    angle = 40;
    direction = 0;
    col = color(random(255),random(255),random(255));
  }
  
  void update(){
    stroke(col);
    line(topx,topy,topx-angle,topy-angle);
    line(topx,topy,topx+angle,topy+angle);
    topx += 1;
    topy += 1;
  }
}