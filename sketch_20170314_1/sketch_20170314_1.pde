int _num = 300;

void setup() {
  background(0);
  size(500, 700);
  colorMode(HSB,100);
  
  for(int i=0;i<height;i++){
    line(0,i,width,i);
  }
  
  for(int i=0;i<_num;i++){
    fill(255,30);
    noStroke();
    float size = random(10,100);
    ellipse(random(width),random(height),size,size);
  }
}