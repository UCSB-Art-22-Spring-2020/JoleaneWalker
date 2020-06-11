void theFishes() {
  
int bodyColor=color(162, 0, 255);
  
  pushMatrix();
    fill(bodyColor);
    //body
    translate(0,0,FishZ);
    ellipse(FishX, FishY, A_bodyL, A_bodyH);
    //tail direction based on swim direction
    if(XDirection1>=1){
      triangle(FishX-A_bodyL/2, FishY, 
      FishX-A_bodyL/2-A_tailW, FishY-A_tailH, 
      FishX-A_bodyL/2-A_tailW, FishY+A_tailH);
    }
    if(XDirection1<=-1){
      triangle(FishX+A_bodyL/2, FishY, 
      FishX+A_bodyL/2+A_tailW, FishY+A_tailH, 
      FishX+A_bodyL/2+A_tailW, FishY-A_tailH);
    }
  popMatrix();
  //fish 2
  //body
  pushMatrix();
    translate(0,0, FishZ2);
    fill(255);
    ellipse(FishX2, FishY2, B_bodyL, B_tailH);
    //tail
    if(XDirection2>=1){
    triangle(FishX2-B_bodyL/2, FishY2, 
      FishX2-B_bodyL/2-B_tailW, FishY2-B_tailH, 
      FishX2-B_bodyL/2-B_tailW, FishY2+B_tailH);
    }
    if(XDirection2<=-1){
      triangle(FishX2+B_bodyL/2, FishY2, 
      FishX2+B_bodyL/2+B_tailW, FishY2+B_tailH, 
      FishX2+B_bodyL/2+B_tailW, FishY2-B_tailH);
    }
  popMatrix();
  //fish 3
  pushMatrix();
    translate(0,0,FishZ3);
      fill(255);
    ellipse(FishX3, FishY3, C_bodyL, C_bodyH);
    //tail
  if(XDirection3>=1){
    triangle(FishX3-C_bodyL/2, FishY3, 
      FishX3-C_bodyL/2-C_tailW, FishY3-C_tailH, 
      FishX3-C_bodyL/2-C_tailW, FishY3+C_tailH);
    }
    if(XDirection3<=-1){
      triangle(FishX3+C_bodyL/2, FishY3, 
      FishX3+C_bodyL/2+C_tailW, FishY3+C_tailH, 
      FishX3+C_bodyL/2+C_tailW, FishY3-C_tailH);
    }
  popMatrix();
    //fish 4
  pushMatrix();
    translate(0,0,FishZ4);
      fill(255);
    ellipse(FishX4, FishY4, D_bodyL, D_bodyH);
    //tail
  if(XDirection4>=1){
    triangle(FishX4-D_bodyL/2, FishY4, 
      FishX4-D_bodyL/2-D_tailW, FishY4-D_tailH, 
      FishX4-D_bodyL/2-D_tailW, FishY4+D_tailH);
    }
    if(XDirection4<=-1){
      triangle(FishX4+C_bodyL/2, FishY4, 
      FishX4+D_bodyL/2+D_tailW, FishY4+D_tailH, 
      FishX4+D_bodyL/2+D_tailW, FishY4-D_tailH);
    }
  popMatrix();
}
