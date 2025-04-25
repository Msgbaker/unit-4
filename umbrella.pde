void umbrella(float x,float y){
  pushMatrix();
  translate(x,y);
  noStroke();
  fill(255);
  arc(0,0,45,28,radians(180),radians(360),OPEN);
  stroke(0);
  line(13.86,-12,50,-12);
  popMatrix();
}
