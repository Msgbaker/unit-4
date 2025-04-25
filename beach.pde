void beach(){
  while(lineY>330 && lineY<450){
     percent=map(lineY,330,450,0,1);
     color z=lerpColor(beach,deepBeach,percent);
     stroke(z);
     line(0,lineY,650,lineY);
     lineY=lineY+1;
  }
}
void sand(float x,float y){
   pushMatrix();
   translate(x,y);
   stroke(148, 100, 77);
   circle(0,0,1);
   popMatrix();
}
