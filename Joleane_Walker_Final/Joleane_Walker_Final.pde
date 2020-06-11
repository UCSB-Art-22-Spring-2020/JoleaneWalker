import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;

// Final Assignment
//Art 22 - Spring 2020
//Author: Joleane R Walker

import peasy.*;

PeasyCam cam;//init camera obj

PShape table, world, rim1;
PImage img, img2;

float FishX =random(-350, 350), FishY=random(-350, 250), FishZ=random(-350,350);
float FishX2 =random(-350, 350), FishY2=random(-350, 250), FishZ2=random(-350,350);
float FishX3 =random(-350, 350), FishY3=random(-350, 250), FishZ3=random(-350,350);
float FishX4 =random(-350, 350), FishY4=random(-350, 250), FishZ4=random(-350,350);

int XDirection1=1,XDirection2=1,XDirection3=1,XDirection4=1;
int YDirection1=1,YDirection2=1,YDirection3=1,YDirection4=1;
int ZDirection1=1,ZDirection2=1,ZDirection3=1,ZDirection4=1;

float swimSpeed=random(1, 2);

 float A_bodyL=random(100,200), A_bodyH=random(50,100), A_tailW=A_bodyL/4, A_tailH=A_bodyH/2;
 float B_bodyL=random(100,200), B_bodyH=random(50,100), B_tailW=B_bodyL/4, B_tailH=B_bodyH/2;
 float C_bodyL=random(100,200), C_bodyH=random(50,100),  C_tailW=C_bodyL/4, C_tailH=C_bodyH/2;
 float D_bodyL=random(100,200), D_bodyH=random(50,100),  D_tailW=C_bodyL/4, D_tailH=D_bodyH/2;

void setup() {
  size(1000, 1000, P3D);
  
  surface.setTitle("Tranquil Fish Jam - J.R. Walker");

  cam = new PeasyCam(this, 100);
  cam.setMinimumDistance(1000);
  cam.setMaximumDistance(1800);

  img = loadImage("wood.jpg"); //load image to use as texture
  //texture from https://images.unsplash.com/photo-1546962339-5ff89552b8ed?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&w=1000&q=80
  img2 = loadImage("space.jpg");
  table = createShape(BOX, 2000, 100, 2000);
  table.setTexture(img); // wrap iceBox with img
  

}
void draw() {
  background(50);
  //fill(255);

  sound();
  theFishes(); //draw fishes
  
  FishX = FishX+(XDirection1*swimSpeed);
  FishY = FishY+(YDirection1);
  FishZ = FishZ+(ZDirection1);
  
  FishX2 = FishX2+(XDirection2*swimSpeed);
  FishY2 = FishY2+(YDirection2);
  FishZ2 = FishZ2+(ZDirection2);
  
  FishX3 = FishX3+(XDirection3*swimSpeed);
  FishY3 = FishY3+(YDirection3);
  FishZ3 = FishZ3+(ZDirection3);
  
  FishX4 = FishX4+(XDirection4*swimSpeed);
  FishY4 = FishY4+(YDirection4);
  FishZ4 = FishZ4+(ZDirection4);
  
  swim();
  terrain();
  tank(); //render table and bowl
  
}
