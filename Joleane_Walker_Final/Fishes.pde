void theFishes() {
  
int bodyColor1=color(beat1, beat2, beat3), bodyColor2=color(beat2, beat1, beat3), 
bodyColor3=color(beat3, beat2, beat1), bodyColor4=color(beat1, beat3, beat2), bodyColor5=color(beat1, beat2, beat2);
  pushMatrix();
  noStroke();
  pushMatrix();
    fill(bodyColor1);
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
    fill(bodyColor2);
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
      fill(bodyColor3);
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
      fill(bodyColor4);
    ellipse(FishX4, FishY4, D_bodyL, D_bodyH);
    //tail
  if(XDirection4>=1){
    triangle(FishX4-D_bodyL/2, FishY4, 
      FishX4-D_bodyL/2-D_tailW, FishY4-D_tailH, 
      FishX4-D_bodyL/2-D_tailW, FishY4+D_tailH);
    }
    if(XDirection4<=-1){
      triangle(FishX4+D_bodyL/2, FishY4, 
      FishX4+D_bodyL/2+D_tailW, FishY4+D_tailH, 
      FishX4+D_bodyL/2+D_tailW, FishY4-D_tailH);
    }
  popMatrix();
      //fish 5
  pushMatrix();
    translate(0,0,FishZ5);
      fill(bodyColor5);
    ellipse(FishX5, FishY5, E_bodyL, E_bodyH);
    //tail 5
  if(XDirection5>=1){
    triangle(FishX5-E_bodyL/2, FishY5, 
      FishX5-E_bodyL/2-E_tailW, FishY5-E_tailH, 
      FishX5-E_bodyL/2-E_tailW, FishY5+E_tailH);
    }
    if(XDirection5<=-1){
      triangle(FishX5+E_bodyL/2, FishY5, 
      FishX5+E_bodyL/2+E_tailW, FishY5+E_tailH, 
      FishX5+E_bodyL/2+E_tailW, FishY5-E_tailH);
    }
  popMatrix();
  popMatrix();
}
