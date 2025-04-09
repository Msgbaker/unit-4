
void boatA(float x,float y,float s){
  pushMatrix();
  translate(x,y);
  noStroke();
  scale(s);
  fill(255);
  triangle(18,-6,2,-3,18,-45);
  triangle(19,-45,19,-7,41,-9);
  fill(220);
  ellipse(18.9,-25,6,36);
  fill(255);
  stroke(0);
  fill(0);
  quad(0,0,49,-3,42,7,1,7);
  line(18,-0.1,18,-53);
  fill(255,0,0);
  triangle(18,-53,18,-48,12,-50.5);
  popMatrix();
}
