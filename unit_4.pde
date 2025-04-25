
color darkSky=#5185D1;
color topSky=#1479FD;
color lightSky=#5CA6FD;
color beach=#DAA57B;
color deepBeach=#8A573A;
color darkOcean=#4D9DE6;
color mediumOcean=#42A9E4;
color mediumishOcean=#30B4E4;
color lightishOcean=#52BFE0;
color lightOcean=#89D1E0;
color h=#000000;
color j=#000000;
color l=#000000;
color z=#000000;
color x=#000000;
color v=#000000;
float[] boatXs={random(0, 130),random(130, 260),random(130, 290),random(290, 420),random(420, 650)};
float[] boatYs={random(136, 330),random(136, 330),random(136, 330),random(136, 330),random(136, 330)};
int boats, c, cloudAmount, k, lineY, boatColour;
float boatx1=boatXs[0];
float boatx2=boatXs[1];
float boatx3=boatXs[2];
float boatx4=boatXs[3];
float boatx5=boatXs[4];
float sandX,sandY;
float scale1, scale2, scale3,scale4,scale5;
float cloudx, seagullx,seagully,percent, trans,waveCount,waveX,wavex;
void setup() {
  size(650, 400);
  scale1=map(boatYs[0], 136, 330, 0.1, 1);
  scale2=map(boatYs[1], 136, 330, 0.1, 1);
  scale3=map(boatYs[2], 136, 330, 0.1, 1);
  scale4=map(boatYs[3], 136, 330, 0.1, 1);
  scale5=map(boatYs[4], 136, 330, 0.1, 1);
  stroke(50, 115, 199);
  line(0, 133, 650, 133);
  stroke(64, 126, 209);
  line(0, 134, 650, 134);
  stroke(217, 203, 192);
  line(0, 350, 650, 350);
  percent=0;
  lineY=1;
  wavex=(int)random(20);
  sandY=352;
  ocean(0,0);
  noLoop();
  //b has to be over 136 and under 342
}
void draw() {
}

void ocean(int x, int y) {
  pushMatrix();
  translate(x,y);
  sky();
  sea();
  while(wavex<350){
    wave(wavex,(int)random(155,270));
    wavex=wavex+(int)random(20,200);
  }
  boatA(boatx1, boatYs[0],scale1);
  boatA(boatx2, boatYs[1],scale2);
  boatA(boatx3, boatYs[2],scale3);
  boatA(boatx4, boatYs[3],scale4);
  boatA(boatx5, boatYs[4],scale5);
  while(seagullx<750){
    seagullx=seagullx+random(30,100);
    seagull(seagullx,seagully,random(.7,.8));
    seagully=random(10,80);
  }
  beach();
  while(sandX<250){
    sand(random(0,650),random(353,450));
    sandX++;
  }
  umbrella(200,200);
  popMatrix();
}
