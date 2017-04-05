ArrayList<Ball> balls;

void setup(){
  size(800,700);
  background(0);
  
  balls = new ArrayList<Ball>();
}

void draw(){
  if(frameCount % 10 == 0){
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

class Ball{

  PVector pos,vec;
  float dim;
  
  Ball(){
    pos = new PVector(random(width),random(height/5));
    vec = new PVector(random(-10,10),random(-10,10));
    dim = random(30,50);
  }
  
  void update(){
    pos.x += vec.x;
    pos.y += vec.y;
    
    if(pos.x > width || pos.x < 0){
      vec.x *= -1;
    }
    if(pos.y > height || pos.y < 0){
      vec.y *= -1;
    }
    
    dim-=0.1;
  }
  
  void display(){
      fill(255);
    ellipse(pos.x,pos.y,dim,dim);
  }
  boolean isDead(){
    if(dim <= 0){
      fill(255,0,0);
      ellipse(pos.x,pos.y,dim,dim);
       return true;
     }
    else return false;
  }
  
  
}