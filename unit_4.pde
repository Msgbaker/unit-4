
float[] boatXs={random(10,640),random(10,640),random(10,640)};
float[] boatYs={random(136,342),random(136,342),random(136,342)};
int boats,a,c,cloudAmount,k;
float boatx1=boatXs[0];
float boatx2=boatXs[1];
float boatx3=boatXs[2];
float cloudx,scale1,scale2,scale3,cloud,Cloud,cloudparency1,cloudparency2;
void setup(){
  size(650,400);
  if(boatx2-boatx1<10) boatx1=boatx1-15;
  if(boatx3-boatx2<10) boatx3=boatx3+15;
  if(boatx3-boatx1<10) boatx1=boatx1-15;
  cloudx=random(45,70);
  cloud=30;
  //b has to be over 136 and under 342
}

void draw(){
  scale1=map(boatYs[0],136,342,0.1,1);
  scale2=map(boatYs[1],136,342,0.1,1);
  scale3=map(boatYs[2],136,342,0.1,1);
  line(0,133,650,133);
  line(0,350,650,350);
  ocean(0,0);
}

void ocean(int x,int y){
  pushMatrix();
  translate(x,y);
  boatA(boatx1,boatYs[0],scale1);
  boatA(boatx2,boatYs[1],scale2);
  boatA(boatx3,boatYs[2],scale3);
  while(cloudAmount<7){
   cloudAmount=cloudAmount+1;
   cloud(cloud,40);
   cloud=cloud+90;

  }
  
  popMatrix();
}
