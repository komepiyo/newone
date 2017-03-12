void setup(){
  size(800,700);
  background(0);
  
}

class Shape{
  float x1,y1,x2,y2;
  float cr,cg,cb,alpha;
  
  Shape(){
    cr = random(255);
    cg = random(255);
    cb = random(255);
    alpha = 100;
    
    stroke(cr,cg,cb,alpha);
    
  }
  
  show(){
      arc();
  }
}