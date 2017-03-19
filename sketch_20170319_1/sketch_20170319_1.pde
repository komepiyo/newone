int num;
float centerX,centerY;

void setup(){
  size(500,500);
  background(255);

  num = 180;
  centerX = width/2;
  centerY = height/2;
  dd();
}

void dd(){
  float x,y;
  float radius = 60;
  for(int i=0;i<num;i++){
    x = centerX + width*cos(radians(i*2));
    y = centerY + height*sin(radians(i*2));
    
    stroke(0.1);
    line(centerX+random(20,radius)*cos(radians(i*2)),centerY+random(20,radius)*sin(radians(i*2)),x,y);
  }
}