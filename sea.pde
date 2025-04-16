void sea(){
  pushMatrix();
  while(lineY>134 && lineY<220){
    percent=map(lineY,134,220,0,1);
    color h=lerpColor(darkOcean,mediumOcean,percent);
    stroke(h);
    line(0,lineY,650,lineY);
    lineY=lineY+1;
  }
  while(lineY>219 && lineY<306){
    percent=map(lineY,220,306,0,1);
    color j=lerpColor(mediumOcean,lightishOcean,percent);
    stroke(j);
    line(0,lineY,650,lineY);
    lineY=lineY+1;
  }
  while(lineY>305 && lineY<350){
   percent=map(lineY,306,350,0,1);
   color l=lerpColor(lightishOcean,lightOcean,percent);
   trans=map(lineY,306,350,255,200);
   stroke(l,trans);
   line(0,lineY,650,lineY);
   lineY=lineY+1;
  }
  popMatrix();
}
