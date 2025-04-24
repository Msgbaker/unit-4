void seagull(float x, float y,float s){
  pushMatrix();
  translate(x,y);
  scale(s);
  line(0,30,14,30);
  noFill();
  stroke(0);
  arc(0,30,14,9,radians(270),radians(360),OPEN);
  arc(14,30,14,9,radians(180),radians(270),OPEN);

  popMatrix();
}
