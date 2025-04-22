void wave(int x,int y, int s){
  pushMatrix();
  translate(x,y);
  noFill();
  strokeWeight(.4);
  stroke(66, 115, 236);
  scale(s);
  while(waveCount<4){
    arc(0+waveX,50,16,9,radians(0),radians(180),OPEN);
    arc(16+waveX,50,18,13,radians(180),radians(360),OPEN); 
    waveX=waveX+34;
    waveCount++;
  }
  popMatrix();
}
