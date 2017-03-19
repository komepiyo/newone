int num;
float centerX,centerY;
float radius;
float step;
float ns;


void setup(){
  size(500,500);
  background(255);
  smooth();

  num = 180;
  centerX = width/2;
  centerY = height/2;
  radius = 60;
  ns = random(1);
  step = 0.5;
  
  dd();
}

void dd(){
  float x1,y1,x2,y2;
  for(int i=0;i<num;i++){
    ns += step;
    x1 = centerX + noise(ns)*radius*cos(radians(i*2));
    y1 = centerY + noise(ns)*radius*sin(radians(i*2));
    
    x2 = centerX + width*cos(radians(i*2));
    y2 = centerY + height*sin(radians(i*2));
    
    stroke(0.1);
    line(x1,y1,x2,y2);
  }
}