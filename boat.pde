
void boatA(float x,float y,float s){
  pushMatrix();
  translate(x,y);
  noStroke();
  scale(s);
  boatColour=(int)random(0,5);
  if(boatColour==0) fill(255);
  if(boatColour==1) fill(200,162,200);
  if(boatColour==2) fill(137,207,240);
  if(boatColour==3) fill(248,131,121);
  if(boatColour==4) fill(17,200,60);
  if(boatColour==5) fill(3, 172, 20);
  triangle(18,-6,2,-3,18,-45);
  triangle(19,-45,19,-7,41,-9);
  fill(255);
  stroke(0);
  fill(0);
  quad(0,0,49,-3,42,7,1,7);
  line(18,-0.1,18,-53);
  fill(255,0,0);
  triangle(18,-53,18,-48,12,-50.5);
  popMatrix();
}
