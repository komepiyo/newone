int num;

void setup(){
  size(800,800);
  background(255);
  num = 0;
}

void mouseReleased(){
  background(255);
  num += 1;
  for(int x=0;x<pow(2,num);x++){
    for(int y=0;y<pow(2,num);y++){
      fill(0);
      float ux = width/(pow(2,num));
      float uy = height/(pow(2,num));
      quad(
        ux  +ux*2*x,      uy*2*y,
        ux*2+ux*2*x, uy  +uy*2*y,
        ux  +ux*2*x, uy*2+uy*2*y,
             ux*2*x, uy  +uy*2*y
      );
    }
  }
}

void draw(){
  
}