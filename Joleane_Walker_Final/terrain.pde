void terrain(){
    for (int y=0; y< rows-1; y++){
    pushMatrix(); 
     translate(-500,460,-500);
        stroke(229,190,151);
        fill(167,139,110);
        rotateX(radians(90));
      beginShape(TRIANGLE_STRIP);
      for (int x=0; x< cols; x++){  
        vertex(x*scl,y*scl, terrain[x][y]);
        vertex(x*scl,(y+1)*scl, terrain[x][y+1]);
      }
      endShape();
      popMatrix();
  }
}
//code found tutorial found @ https://www.youtube.com/watch?v=IKB1hWWedMk      
     
      
      
