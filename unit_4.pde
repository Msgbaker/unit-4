
void setup(){
  size(650,400);
  ocean(50,70);
}

void draw(){
  
}

void ocean(int x,int y){
  pushMatrix();
  translate(x,y);
  boatA(0,0);
  popMatrix();
}
