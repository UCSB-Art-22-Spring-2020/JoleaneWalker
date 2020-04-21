// Assignment 3 [ due April 21 @ 8:59am ]
//Art 22 - Spring 2020
//Author: Joleane R Walker

PImage spray, spray2, bgimg; //images created using photoshop and illustrator
float x1, y1, x2, y2;
float noisePosX, noisePosY, noisePosX2, noisePosY2; //position of noise

void setup() {
  size(800, 800);
  init();//initialize start positions
}
void draw() {
  object1();// run paint process 1
  object2();
  image(spray, width/2,height/2);
  if(keyPressed){
    reload();
  }
}
