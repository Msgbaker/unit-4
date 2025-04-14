void seagull(int x, int y){
  pushMatrix();
  translate(x,y);
  noFill();
  ellipse(0,0,17,16);
  ellipse(14,0,17,16);
  noStroke();
  fill(205);
  rect(-10,-2,40,20);
  rect(-10,-10,7,50);
  rect(17,-10,7,50);
  stroke(0);
  line(0,-2,14,-2);
  popMatrix();
}
