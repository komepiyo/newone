int _num = 1000;

void setup() {
  background(0);
  size(500, 700);

    colorMode(HSB,height);
  
  for(int i=0;i<height;i++){
    stroke(i,height-30,height-500);
    line(0,i,width,i);
  }
  
  for(int i=0;i<_num;i++){
    colorMode(RGB,256);
    fill(255,random(10,20));
    noStroke();
    float size = random(50);
    ellipse(random(width),random(height),size,size);
  }
}

void draw(){
}

void mouseReleased(){
}