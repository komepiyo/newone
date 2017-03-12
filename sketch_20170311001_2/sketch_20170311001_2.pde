int _wid = 20;
int _margin = 10;
int _pad = 50;
int _num;
Bar bars[];

void setup(){
  size(1000,300);
  smooth();
  background(255);
  fill(0);
  
  _num = floor((width+_wid+_pad)/(_wid+_margin)) + 1;
  println(_num);
  
  bars = new Bar[_num];
  for(int i=0;i<_num;i++){
    bars[i] = new Bar(i);
    bars[i].update();
  }
}

void draw(){
  //if(frameCount%60 == 0){  println(mouseX,mouseY);}
  //background(255);
  for(int i=0;i<_num;i++){
    //bars[i].update();
  }
}

class Bar{
  int id;
  float x;
  
  Bar(int id){
    this.id = id;
    this.x = (0- (_wid+_pad)) + 
    id*(_wid+_margin);
  }
  
  void update(){
    float startx = this.x;
    quad(startx,0,startx+_wid,0,         
           startx+_pad+_wid,height,startx+_pad,height);
    if(startx > width){
      this.x = 0 - (_wid+_pad);
    }else{
      this.x++;
    }
  }
}