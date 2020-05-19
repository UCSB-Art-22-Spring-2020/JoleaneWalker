void scene() {

  // global translation and rotation
  translate(camX, camY, camZ);

  rotateY(radians(rotY));
  rotateZ(radians(rotZ));

  noStroke();
  shape(space, 0, 0);
  
  pushMatrix();
    strokeWeight(2);
    stroke(0);
    fill(155);
    box(20);
    
  popMatrix();
  
}
