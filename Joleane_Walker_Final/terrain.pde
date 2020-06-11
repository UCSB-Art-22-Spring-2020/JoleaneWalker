void terrain(){

int scl=20;
int w=1000, h=1000;
int cols=w/scl, rows=h/scl;
    for (int y=0; y< rows; y++){
    pushMatrix(); 
     translate(-500,460,-500);
        stroke(255);
        fill(167,139,110);
        rotateX(radians(90));
      beginShape(TRIANGLE_STRIP);
      for (int x=0; x< cols; x++){  
        vertex(x*scl,y*scl);
        vertex(x*scl,(y+1)*scl);
      }
      endShape();
      popMatrix();
  }
}
      
     
      
      
