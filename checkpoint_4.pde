
int count,h,j;
float r,g,b,scale,rotate;
void setup(){
  size(300,300);
  h=30;
  j=30;
}

void draw(){
  if(mousePressed) flag(mouseX,mouseY,scale,rotate);
  //flag(25,70,0.5);
  //flag(50,80,1);
  //flag(90,90,.1);
  while(h<300){
    flag(h,j,scale,rotate);
    rotate=random(0,8);
    scale=random(0.1,2);
    h=h+30;
    if(h>=300){
      h=30;
      j=j+30;
    }
  }
}

void flag(float x,float y,float s,float r){
  pushMatrix();
  translate(x,y);
  rotate(PI/r);
  scale(s);
  fill(100);
  rect(0,-16,2.8,16);
  r=random(0,255);
  g=random(0,255);
  b=random(0,255);
  redpart(0,0,r,g,b);
  popMatrix();
}
void redpart(int x,int y,float r,float g, float b){
  pushMatrix();
  translate(x,y);
  fill(r,g,b);
  triangle(0,-18,8.5,-14,0,-10);
  popMatrix();
}
