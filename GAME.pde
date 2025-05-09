
PImage flash,ender;
//ability's
//p1
//tele
int teleCooldown;
boolean tele,enderOn;
float teleCooldownText,enderX,enderY,evy,evx;
//flash
int flashCooldown,f;
float flashCooldownText;
boolean flashed;
//enemytele
int eTeleCooldown;
float eTeleCooldownText;
boolean eTele;
//
//p2
//boost
int boostCooldown,boostLength;
float boostCooldownText;
boolean boost;
//player 1
float x, y, r;
float x2, y2, r2;
//ball
float bx, by, bd;
float vby, vbx, abx, aby;
//player 1 controls
boolean w, a, s, d;
boolean w2, a2, s2, d2;

void setup() {
  flash=loadImage("flash.png");
  ender=loadImage("ender.png");
  size(600, 600);
  //player 1
  x=width/2;
  y=15;
  r=32;
  w=false;
  a=false;
  s=false;
  d=false;
  tele=false;
  flashed=false;
  //player 2
  x2=width/2;
  y2=585;
  r2=32;
  w2=false;
  a2=false;
  s2=false;
  d2=false;
  //ball
  bd=12;
  bx=width/2;
  by=height/2;
  vby=0;
  vbx=0;
  teleCooldown=0;
  flashCooldown=0;
  boostCooldown=0;
  //
  enderOn=false;
  boost=false;
}

void draw() {
  background(220);
  textAlign(CENTER);
  //ability cooldowns
  //flash
  flash.resize(30,30);
  image(flash,0,0);
  fill(235,235,235,215);
  rect(0,0,flashCooldownText,30);
  noFill();
  stroke(0);
  rect(0,0,30,30);
  flashCooldownText=(map(flashCooldown,0,1300,0,30));
  //tele
  fill(255);
  rect(0,30,30,30);
  ender.resize(30,30);
  image(ender,1,32);
  fill(235,235,235,215);
  noStroke();
  rect(0,30,teleCooldownText,30);
  noFill();
  stroke(0);
  rect(0,30,30,30);
  teleCooldownText=(map(teleCooldown,0,1000,0,30));
  //ability desc
  fill(0);
  if(mouseX>=0 && mouseX<=30 && mouseY>=0 && mouseY<=30) text("FLASHBANG Q",67,17);
  if(mouseX>=0 && mouseX<=30 && mouseY>=30 && mouseY<=60) text("Teleports you to mouse E",94,51);
  //
  stroke(0);
  line(0,height/2,width,height/2);
  //player 1
  if (w && y>=r/2) y-=4;
  if (a && x>=r/2) x-=4;
  if (s && y<=300-r/2) y+=4;
  if (d && x<= 600-r/2) x+=4;
  fill(255);
  circle(x, y, r);
  //player 2
  if (w2 && y2>=300+r2/2) y2-=4;
  if (a2 && x2>=r2/2) x2-=4;
  if (s2 && y2<=600-r2/2) y2+=4;
  if (d2 && x2<= 600-r2/2) x2+=4;
  fill(0);
  circle(x2, y2, r2);
  //ball
  fill(255);
  circle(bx, by, bd);
  if (by<=5) vby=3;
  if (by>=595) vby=-3;
  by=by+vby;
  bx=bx+vbx;
  if (bx<=5) vbx=2.5;
  if (bx>=595) vbx=-2.5;
  if (dist(x, y, bx, by)<r/2+bd/2) {
    vby=(by-y)/3.2;
    vbx=(bx-x)/3.2;
  }
  if (dist(x2, y2, bx, by)<r2/2+bd/2) {
    vby=(by-y2)/3.2;
    vbx=(bx-x2)/3.2;
  }
  //ability's
  //tele
  println(teleCooldown);
  if (teleCooldown!=0) teleCooldown--;
  if (tele && teleCooldown==0) {
    enderOn=true;
    enderX=x;
    enderY=y;
    //x=mouseX;
   // y=mouseY;
    teleCooldown=1000;
  }
  if(enderOn){
    ender.resize(30,30);
    image(ender,enderX,enderY);
    enderX+=evx/8;
    enderY+=evy/8;
    evx=mouseX-x;
    evy=mouseY-y;
    if(dist(enderX,enderY,mouseX,mouseY)<3 || enderX<=15 || enderX>=width-15 || enderY<=15 || enderY>=width/2-32){
      x=enderX;
      y=enderY;
      enderOn=false;
    }
  }
  //flash
  if(flashCooldown!=0) flashCooldown--;
  if(flashed && flashCooldown==0){
    f=350;
    flashCooldown=1300;
  }
  if(f!=0) f--;
  noStroke();
  fill(255,255,255,f);
  rect(0,0,width,height);
  if(by<=bd/2||by>=600-bd/2){
     by=height/2;
     bx=width/2;
     vby=0;
     vbx=0;
     x=width/2;
     y=r/2;
     x2=width/2;
     y2=600-r/2;
  }
  //boost
  if(boost && boostCooldown==0){
    boostLength=4;
    boostCooldown=720;
    if(boostLength>0){
      x2=x2*1.5;
      y2=y2*1.5;
    }
    if(boostLength!=0) boostLength--;
  } else if(boostCooldown!=0) boostCooldown--;
}

  void keyPressed() {
    //player 2
    if (keyCode==UP) w2=true;
    if (keyCode==LEFT) a2=true;
    if (keyCode==DOWN) s2=true;
    if (keyCode==RIGHT) d2=true;
    if (key=='p') boost=true;
    //player 1
    if (key=='w') w=true;
    if (key=='a') a=true;
    if (key=='s') s=true;
    if (key=='d') d=true;
    if (key=='e') tele=true;
    if (key=='q') flashed=true;
    if (key=='r') eTele=true;
    
  }
  void keyReleased() {
    //player 2
    if (keyCode==UP) w2=false;
    if (keyCode==LEFT) a2=false;
    if (keyCode==DOWN) s2=false;
    if (keyCode==RIGHT) d2=false;
    if (key=='p') boost=false;
    //player 1
    if (key=='w') w=false;
    if (key=='a') a=false;
    if (key=='s') s=false;
    if (key=='d') d=false;
    if (key=='e') tele=false;
    if (key=='q') flashed=false;
    if (key=='r') eTele=false;
    
  }
