void tank() {
  //world
  //table
  int water=color(115, 165, 255,20);
  int glass=color(153, 245, 229, 20);
  
  pushMatrix();
    translate(0, 575);
    shape(table, 0, 0);
  popMatrix();
  //-------------------------------------------------------------TankRims
    pushMatrix();
    stroke(0);
    fill(0);
    pushMatrix();
      translate(0, -500, 500);
      box(1004, 75, 75);
    popMatrix();
    pushMatrix();
      translate(0, -500, -500);
      box(1004, 75, 75);
    popMatrix();
    pushMatrix();
      translate(-500, -500, 0);
      box(75, 75, 1080);
    popMatrix();
    pushMatrix();
      translate(500, -500, 0);
      box(75, 75, 1080);
    popMatrix();
    pushMatrix();
      translate(0, 500);
      box(1040, 75, 1040);
    popMatrix();
  popMatrix();

  //-------------------------------------------------------------inside
  pushMatrix();
    stroke(25,71,206);
  pushMatrix();//front
    translate(-1470, -1480, 490);
    fill(water);
    square(980, 980, 980);
  popMatrix();
  
  pushMatrix();//back
    translate(-1470, -1480, -490);
    fill(water);
    square(980, 980, 980);
  popMatrix();
  
  pushMatrix();//left
    translate(-490, -1480, 1470);
    fill(water);
    rotateY(radians(90));
    square(980, 980, 980);
  popMatrix();
  
  pushMatrix();//Right
    translate(490, -1480, 1470);
    fill(water);
    rotateY(radians(90));
    square(980, 980, 980);
  popMatrix();
  
// --------------------------------------------------------------Outside Pain
  pushMatrix();//front
    translate(-1500, -1500, 500);
    fill(glass);
    square(1000, 1000, 1000);
  popMatrix();
  
  pushMatrix();//back
    translate(-1500, -1500, -500);
    fill(glass);
    square(1000, 1000, 1000);
  popMatrix();
  pushMatrix();//Right
    translate(-500, -1500, 1500);
    fill(glass);
    rotateY(radians(90));
    square(1000, 1000, 1000);
  popMatrix();
  pushMatrix();//left
    translate(500, -1500, 1500);
    fill(glass);
    rotateY(radians(90));
    square(1000, 1000, 1000);
  popMatrix();
  popMatrix();
}
