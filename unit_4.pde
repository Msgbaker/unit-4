
color darkOcean=#4D9DE6;
color mediumOcean=#42A9E4;
color mediumishOcean=#30B4E4;
color lightishOcean=#52BFE0;
color lightOcean=#89D1E0;
color h=#000000;
color j=#000000;
color l=#000000;
float[] boatXs={random(10,640),random(10,640),random(10,640)};
float[] boatYs={random(136,330),random(136,330),random(136,330)};
int boats,a,c,cloudAmount,k,lineY,boatColour;
float boatx1=boatXs[0];
float boatx2=boatXs[1];
float boatx3=boatXs[2];
float cloudx,scale1,scale2,scale3,cloud,Cloud,cloudparency1,cloudparency2,percent,trans;
void setup(){
  size(650,400);
  if(boatx2-boatx1<10) boatx1=boatx1+15;
  if(boatx3-boatx2<10) boatx3=boatx3+15;
  if(boatx3-boatx1<10) boatx1=boatx1+15;
  scale1=map(boatYs[0],136,330,0.1,1);
  scale2=map(boatYs[1],136,330,0.1,1);
  scale3=map(boatYs[2],136,330,0.1,1);
  stroke(50, 115, 199);
  line(0,133,650,133);
  stroke(64,126,209);
  line(0,134,650,134);
  stroke(217, 203, 192);
  line(0,350,650,350);
  fill(217, 203, 192);
  rect(0,330,650,120);
  cloudx=random(45,70);
  cloud=30;
  percent=0;
  lineY=135;
  ocean(0,0);
  //b has to be over 136 and under 342
}

void draw(){

  
}

void ocean(int x,int y){
  pushMatrix();
  translate(x,y);
  while(lineY>134 && lineY<220){
    percent=map(lineY,134,220,0,1);
    color h=lerpColor(darkOcean,mediumOcean,percent);
    stroke(h);
    line(0,lineY,650,lineY);
    lineY=lineY+1;
  }
  while(lineY>219 && lineY<306){
    percent=map(lineY,220,306,0,1);
    color j=lerpColor(mediumOcean,lightishOcean,percent);
    stroke(j);
    line(0,lineY,650,lineY);
    lineY=lineY+1;
  }
  while(lineY>305 && lineY<350){
   percent=map(lineY,306,350,0,1);
   color l=lerpColor(lightishOcean,lightOcean,percent);
   trans=map(lineY,306,350,255,200);
   stroke(l,trans);
   line(0,lineY,650,lineY);
   lineY=lineY+1;
  }
  
  seagull(90,50,.6);
  boatA(boatx1,boatYs[0],scale1);
  boatA(boatx2,boatYs[1],scale2);
  boatA(boatx3,boatYs[2],scale3);
  popMatrix();
}
