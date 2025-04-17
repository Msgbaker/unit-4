
void wave(float a,float wavex){
  pushMatrix();
  translate(a,wavex);
  waveY=3*sin(waveX+wavex+a)+10;
  strokeWeight(1);
  circle(waveX,waveY,1);
  popMatrix();
}
