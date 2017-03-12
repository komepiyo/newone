int _num = 5;

Shape shps[];


void setup(){
  size(800,700);
  background(0);
  
  stroke(255);
  line(width/2,0,width/2,height);
  line(0,height/2,width,height/2);
  
  translate(width/2,height/2);
  
  shps = new Shape[_num];
  for(int i=0;i<_num;i++){
    shps[i] = new Shape();
    shps[i].show();
  }
  
}

class Shape{
  float cx,cy;
  float x1,y1,x2,y2;
  float cr,cg,cb,alpha;
  
  float weight;
  
  Shape(){
    cx = random(-width/2,0);
    cy = random(0,height/2);
    
    cr = random(255);
    cg = random(255);
    cb = random(255);
    alpha = 80;
    
    weight = random(10,30);
  }
  
  void show(){
    pushMatrix();
    rotate(radians(random(70)));
    stroke(cr,cg,cb,alpha);
    noFill();
    for(int i=0;i<weight;i++){
      arc(-150,100,400,50+i,0,radians(180));
    }
    popMatrix();
  }
  
}