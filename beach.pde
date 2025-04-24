void beach(){
  while(lineY>330 && lineY<450){
     percent=map(lineY,330,450,0,1);
     color z=lerpColor(beach,deepBeach,percent);
     stroke(z);
     line(0,lineY,650,lineY);
     lineY=lineY+1;
  }
}
