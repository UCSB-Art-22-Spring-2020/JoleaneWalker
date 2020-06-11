void water(){
    
  float yOffW =wave;
  for (int y=1; y< Waterrows-1; y++) {  
    float xOffW =waveX;
    for (int x=1; x< Watercols-1; x++) {
      water[x][y]=map(noise(xOffW, yOffW), 0,1,-20,20);
      xOffW+=0.2;
    }
    yOffW+=0.2;
  } 
  
  
  for (int y=0; y< rows-1; y++){
    pushMatrix(); 
     translate(-500,-380,-500);
         stroke(14,32,85,50);
        fill(89,131,252,50);
        rotateX(radians(90));
      beginShape(TRIANGLE_STRIP);
      for (int x=0; x< cols; x++){  
        vertex(x*scl,y*scl, water[x][y]);
        vertex(x*scl,(y+1)*scl, water[x][y+1]);
      }
      endShape();
      popMatrix();
  }
}
//code found tutorial found @ https://www.youtube.com/watch?v=IKB1hWWedMk      
     
