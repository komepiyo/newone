ArrayList<Ball> balls;

void setup(){
  size(800,700);
  background(0);
  
  balls = new ArrayList<Ball>();
}

void draw(){
  if(frameCount % 100 == 0){
    balls.add(new Ball());
  }
  for(int i=0;i<balls.size();i++){
    Ball b = balls.get(i);
    b.update();
    b.display();
    if(b.isDead()){
      balls.remove(i);
    }
  }
  
}

void mouseReleased(){
  for(int i=0;i<balls.size();i++){
    Ball b = balls.get(i);
    b.die();
    balls.remove(i);
  }
}

class Ball{

  PVector pos,vec;
  float dim;
  
  Ball(){
    pos = new PVector(random(dim,width-dim),random(dim,height-dim));
    vec = new PVector(random(-5,5),random(-5,5));
    dim = random(70,100);
  }
  
  void update(){
    pos.x += vec.x;
    pos.y += vec.y;
    
    if(pos.x + dim > width ){
      pos.x = width-dim;
      vec.x *= -1;
    }
    if(pos.x - dim < 0){
      pos.x = dim;
      vec.x *= -1;
    }
    
    if(pos.y + dim > height ){
      pos.y = height-dim;
      vec.y *= -1;
    }
    if(pos.y - dim < 0){
      pos.y = dim;
      vec.y *= -1;
    }
    
    //dim-=1;
  }
  
  void display(){
      fill(255);
    ellipse(pos.x,pos.y,dim*2,dim*2);
  }
  boolean isDead(){
    if(dim <= 50){
      die();
       return true;
     }
    else return false;
  }
  
  void die(){
      for(;dim>=0;dim-=sqrt(pow(vec.x,2)+pow(vec.y,2))+3){
        ellipse(pos.x,pos.y,dim*2,dim*2);
      }
  }
  
  
}