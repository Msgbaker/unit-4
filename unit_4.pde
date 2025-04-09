
float[] numbers={random(136,342),random(136,342),random(136,342),random(0,650),random(0,650),random(0,650)};
int boats,a,c;
float boatX,boatY,scale1,scale2,scale3;
void setup(){
  size(650,400);
  //b has to be over 136 and under 342
}

void draw(){
  scale1=map(numbers[0],136,342,0.1,1);
  scale2=map(numbers[1],136,342,0.1,1);
  scale3=map(numbers[2],136,342,0.1,1);
  line(0,133,650,133);
  line(0,350,650,350);
  ocean(0,0);
}

void ocean(int x,int y){
  pushMatrix();
  translate(x,y);
  boatA(numbers[3],numbers[0],scale1);
  boatA(numbers[4],numbers[1],scale2);
  boatA(numbers[5],numbers[2],scale3);
  cloud(200,30);
  popMatrix();
}
