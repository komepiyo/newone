int x = 0;

void setup(){
  size(500,300);
  smooth();
  background(255);
  fill(0);
}

void draw(){
  if(frameCount%60 == 0){  println(mouseX,mouseY);}
  
  background(255);
  //for(int i=0;i<10;i++){
    rect(x,0,(x+20),height);
  //}
  x++;
  println(x + " ; " + (x+20));
}