
float x,y,d1;
float bx,by,bd;
float vby,vbx,abx,aby;
boolean w,a,s,d;
boolean tele;

void setup(){
  size(600,600);
  x=width/2;
  y=15;
  d1=20;
  w=false;
  a=false;
  s=false;
  d=false;
  tele=false;
  bd=10;
  bx=width/2;
  by=0;
  vby=0;
  vbx=0;
}

void draw(){
  background(220);
  if(w) y-=3;
  if(a) x-=3;
  if(s) y+=3;
  if(d) x+=3;
  circle(x,y,d1);
  circle(bx,by,bd);
  if(by<=5) vby=3;
  if(by>=595) vby=-3;
  by=by+vby;
  vby=vby+aby;
  bx=bx+vbx;
  println(y);
  if(bx<=5) vbx=3;
  if(bx>=595) vbx=-3;
  if(dist(x,y,bx,by)<d1/2+bd/2){
    vby=by-y;
    vbx=bx-x;
  }
  if(tele){
    x=mouseX;
    y=mouseY;
    tele=false;
  }
}

void keyPressed(){
  //while(x<=590 || x>=10 && y>=10 || y<=590){
    if(key=='w') w=true;
    if(key=='a') a=true;
    if(key=='s') s=true;
    if(key=='d') d=true;
    if(key=='e') tele=true;
  //}
}
void keyReleased(){
  //while(x<=590 || x>=10 && y>=10 || y<=590){
    if(key=='w') w=false;
    if(key=='a') a=false;
    if(key=='s') s=false;
    if(key=='d') d=false;
  //}
}
