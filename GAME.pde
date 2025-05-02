//ability's
int teleCooldown;
boolean tele;
int flashCooldown,f;
boolean flash;
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
  size(600, 600);
  //player 1
  x=width/2;
  y=15;
  r=20;
  w=false;
  a=false;
  s=false;
  d=false;
  tele=false;
  flash=false;
  //player 2
  x2=width/2;
  y2=585;
  r2=20;
  w2=false;
  a2=false;
  s2=false;
  d2=false;
  //ball
  bd=10;
  bx=width/2;
  by=height/2;
  vby=0;
  vbx=0;
  teleCooldown=0;
  flashCooldown=0;
}

void draw() {
  background(220);
  stroke(0);
  line(0,height/2,width,height/2);
  //player 1
  if (w && y>=10) y-=3;
  if (a && x>=10) x-=3;
  if (s && y<=290) y+=3;
  if (d && x<= 590) x+=3;
  fill(255);
  circle(x, y, r);
  //player 2
  if (w2 && y2>=310) y2-=3;
  if (a2 && x2>=10) x2-=3;
  if (s2 && y2<=590) y2+=3;
  if (d2 && x2<= 590) x2+=3;
  fill(0);
  circle(x2, y2, r2);
  //ball
  fill(255);
  circle(bx, by, bd);
  if (by<=5) vby=3;
  if (by>=595) vby=-3;
  by=by+vby;
  bx=bx+vbx;
  if (bx<=5) vbx=3;
  if (bx>=595) vbx=-3;
  if (dist(x, y, bx, by)<r/2+bd/2) {
    vby=by-y;
    vbx=bx-x;
  }
  if (dist(x2, y2, bx, by)<r/2+bd/2) {
    vby=by-y2;
    vbx=bx-x2;
  }
  //ability's
  //tele
  println(teleCooldown);
  if (teleCooldown!=0) teleCooldown--;
  if (tele && teleCooldown==0) {
    x=mouseX;
    y=mouseY;
    teleCooldown=1000;
  }
  //flash
  if(flashCooldown!=0) flashCooldown--;
  if(flash && flashCooldown==0){
    f=350;
    flashCooldown=1300;
  }
  if(f!=0) f--;
  noStroke();
  fill(255,255,255,f);
  rect(0,0,width,height);
}

  void keyPressed() {
    //player 1
    if (key=='w') w=true;
    if (key=='a') a=true;
    if (key=='s') s=true;
    if (key=='d') d=true;
    if (key=='e') tele=true;
    if (key=='q') flash=true;
    //player 2
    if (keyCode==UP) w2=true;
    if (keyCode==LEFT) a2=true;
    if (keyCode==DOWN) s2=true;
    if (keyCode==RIGHT) d2=true;
  }
  void keyReleased() {
    //player 1
    if (key=='w') w=false;
    if (key=='a') a=false;
    if (key=='s') s=false;
    if (key=='d') d=false;
    if (key=='e') tele=false;
    if (key=='q') flash=false;
    //player 2
    if (keyCode==UP) w2=false;
    if (keyCode==LEFT) a2=false;
    if (keyCode==DOWN) s2=false;
    if (keyCode==RIGHT) d2=false;
  }
