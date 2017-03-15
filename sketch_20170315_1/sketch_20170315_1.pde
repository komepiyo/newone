int num;

void setup(){
  size(800,800);
  background(255);
  num = 1;
  
  fill(0);
  quad(width/2,0,
        width,height/2,
        width/2,height,
        0,height/2);
}

void mouseReleased(){
  background(255);
  num *= 4;
  for(int x=0;x<4/2;x++){
    for(int y=0;y<4/2;y++){
      fill(0);
      quad((width/2/2*(1+x),0);
    }
  }
}

void draw(){
  
}