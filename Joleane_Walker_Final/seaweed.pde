void seaweed() {

  pushMatrix();// front row
    translate(-500, -400,300);
    fill(20, 144, 71);
    stroke(87, 227, 57);
    strokeWeight(1.0);
  
    bezier(350, 895, 455, 701, 258, 689, 377, 444);
    bezier(539, 904, 644, 721, 421, 666, 543, 539);
    bezier(721, 901, 862, 637, 581, 666, 722, 453);
    bezier(173, 912, 292, 647, 62, 819, 179, 538);
    bezier(49, 897, 168, 632, -64, 724, 53, 444);
  popMatrix();
  
  pushMatrix();// middle row
    translate(-500, -400);
    fill(20, 144, 71);
    stroke(87, 227, 57);
    strokeWeight(1.0);
  
    bezier(350, 895, 541, 657, 183, 402, 352, 174);
    bezier(539, 904, 730, 666, 375, 475, 544, 247);
    bezier(721, 901, 862, 637, 582, 394, 723, 180);
    bezier(173, 912, 292, 647, 67, 556, 184, 276);
    bezier(49, 897, 168, 632, -46, 633, 71, 352);
  popMatrix();

  pushMatrix();// back row
    translate(-400, -400, -300);
    fill(20, 144, 71);
    stroke(87, 227, 57);
    strokeWeight(1.0);
  
    bezier(350, 895, 541, 657, 183, 402, 352, 174);
    bezier(539, 904, 730, 666, 375, 475, 544, 247);
    bezier(721, 901, 862, 637, 582, 394, 723, 180);
    bezier(173, 912, 292, 647, 67, 556, 184, 276);
    bezier(49, 897, 168, 632, -46, 633, 71, 352);
  popMatrix();

  
  pushMatrix();
    translate(0,100,50);
    image(img3,0,0);
  popMatrix();

  //20,144,71
}   //87,227,57
