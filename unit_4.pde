
color darkSky=#5185D1;
color topSky=#1479FD;
color lightSky=#5CA6FD;
color beach=#d9cbc0;
color deepBeach=#B07F78;
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
float[] boatXs={random(10, 640), random(10, 640), random(10, 640)};
float[] boatYs={random(136, 330), random(136, 330), random(136, 330)};
int boats, c, cloudAmount, k, lineY, boatColour;
float boatx1=boatXs[0];
float boatx2=boatXs[1];
float boatx3=boatXs[2];
float scale1, scale2, scale3;
float cloudx, seagullx,seagully,percent, trans,waveCount,waveX,wavex;
void setup() {
  size(650, 400);
  if (boatx2-boatx1<10) boatx1=boatx1+15;
  if (boatx3-boatx2<10) boatx3=boatx3-15;
  if (boatx3-boatx1<10) boatx1=boatx1+15;
  scale1=map(boatYs[0], 136, 330, 0.1, 1);
  scale2=map(boatYs[1], 136, 330, 0.1, 1);
  scale3=map(boatYs[2], 136, 330, 0.1, 1);
  stroke(50, 115, 199);
  line(0, 133, 650, 133);
  stroke(64, 126, 209);
  line(0, 134, 650, 134);
  stroke(217, 203, 192);
  line(0, 350, 650, 350);
  percent=0;
  lineY=1;
  wavex=(int)random(20);
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
  cloud(10,0);
  boatA(boatx1, boatYs[0], scale1);
  boatA(boatx2, boatYs[1], scale2);
  boatA(boatx3, boatYs[2], scale3);
  while(wavex<350){
    wave(wavex,(int)random(155,270));
    wavex=wavex+(int)random(20,200);
  }
  beach();
  while(seagullx<750){
    seagull(seagullx,seagully,random(.7,.8));
    seagullx=seagullx+random(40,100);
    seagully=random(10,80);
  }
  popMatrix();
}
