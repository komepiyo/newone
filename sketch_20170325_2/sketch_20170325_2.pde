Arrow ar;
int isFilling = 1;

void setup(){
  size(800,600);
  background(0);
  smooth();
  
  ar = new Arrow();
  
}

void draw(){
  ar.update();
  if(ar.topy > height+ar.angle){
    ar.init();
  };
}

class Arrow{
  
  float topx,topy;
  color col;
  float angle;
  float direction;
  float speed;
  
  Arrow(){
    topx = random(width);
    topy = 0;
    angle = 40;
    direction = 0;
    speed = random(10,20);
    col = color(random(255),random(255),random(255));
  }
  
  void init(){
    topx = random(width);
    topy = 0;
    angle = 40;
    direction = 0;
    speed = random(10,20);
    col = color(random(255),random(255),random(255));
  }
  
  void update(){
    stroke(col,90);
        
    if(isFilling == 1){
      for(int i=0;i<speed;i++){
        line(topx,topy,topx-angle,topy-angle);
        line(topx,topy,topx+angle,topy-angle);
        topx += 0;
        topy += 1;
      }
    }else{
      line(topx,topy,topx-angle,topy-angle);
      line(topx,topy,topx+angle,topy-angle);
      topx += 0;
      topy += speed;
    }
 }
}