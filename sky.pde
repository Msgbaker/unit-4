void sky(){
  pushMatrix();
  while(lineY>0 && lineY<66){
    percent=map(lineY,0,66,0,1);
    color x=lerpColor(topSky,lightSky,percent);
    stroke(x);
    line(0,lineY,650,lineY);
    lineY=lineY+1;
  }
  while(lineY>65 && lineY<135){
    percent=map(lineY,66,133,0,1);
    color v=lerpColor(lightSky,darkSky,percent);
    stroke(v);
    line(0,lineY,650,lineY);
    lineY=lineY+1;
  }
  popMatrix();
}
