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

Minim minim;
AudioPlayer music;
BeatDetect beat;
FFT fft;

PShape table, background;
PImage img, img2, img3;

//fish starting positions
float FishX =random(-350, 350), FishY=random(-350, 250), FishZ=random(-350, 350);
float FishX2 =random(-350, 350), FishY2=random(-350, 250), FishZ2=random(-350, 350);
float FishX3 =random(-350, 350), FishY3=random(-350, 250), FishZ3=random(-350, 350);
float FishX4 =random(-350, 350), FishY4=random(-350, 250), FishZ4=random(-350, 350);
float FishX5 =random(-350, 350), FishY5=random(-350, 250), FishZ5=random(-350, 350);
//directions
float XDirection1=-1, XDirection2=1, XDirection3=-1, XDirection4=1, XDirection5=-1;
int YDirection1=1, YDirection2=-1, YDirection3=1, YDirection4=-1, YDirection5=1;
int ZDirection1=-1, ZDirection2=1, ZDirection3=-1, ZDirection4=1, ZDirection5=-1;
//speed
float swimSpeed=noise(.1, 3);

//build fish variables
float beat1 = random(0,254), beat2 = random(0,254), beat3=random(0,254);//start color
float A_bodyL=random(100, 200), A_bodyH=random(50, 100), A_tailW=A_bodyL/4, A_tailH=A_bodyH/2;
float B_bodyL=random(100, 200), B_bodyH=random(50, 100), B_tailW=B_bodyL/4, B_tailH=B_bodyH/2;
float C_bodyL=random(100, 200), C_bodyH=random(50, 100), C_tailW=C_bodyL/4, C_tailH=C_bodyH/2;
float D_bodyL=random(100, 200), D_bodyH=random(50, 100), D_tailW=D_bodyL/4, D_tailH=D_bodyH/2;
float E_bodyL=random(100, 200), E_bodyH=random(50, 100), E_tailW=E_bodyL/4, E_tailH=E_bodyH/2;

//terrain & Water variables
int scl=20;
int w=1000, h=1000;
int cols=w/scl, rows=h/scl, Watercols=w/scl, Waterrows=h/scl;

float[][] terrain=new float [cols][rows], water=new float [Watercols][Waterrows];  //arrays for the water & terrain
float wave, waveX;

void setup() {
  size(1000, 1000, P3D);

  minim = new Minim(this);
  music=minim.loadFile("GreenCloud.mp3");//Trance Celtica by Green Clouds https://www.youtube.com/watch?v=EUq2HSRHc7Y
  music.loop();

  beat = new BeatDetect();
  beat.setSensitivity(0); 
  fft = new FFT(music.bufferSize(), music.sampleRate() );
  
  surface.setTitle("Tranquil Fish Jam - J.R. Walker");

  cam = new PeasyCam(this, 100);
  cam.setMinimumDistance(1000);
  cam.setMaximumDistance(2000);

  //Table
  img = loadImage("wood.jpg");
  //texture from https://images.unsplash.com/photo-1546962339-5ff89552b8ed?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&w=1000&q=80
  table = createShape(BOX, 2000, 100, 2000);
  table.setTexture(img);

  //Background
  img2 = loadImage("space2.jpg"); // found @ https://i.pinimg.com/originals/c7/79/23/c779238f72caa45fd63ac51ecf003fe1.jpg
  background = createShape(BOX,4000);
  background.setTexture(img2);
  
  img3 = loadImage("space_man.gif"); //found @ https://www.pepperspetsupplies.com/products/aquarium-decoration-treasure-hunt-man-landscaping-pneumatic-toy-underwater-fish-tank-decor-necessary-aquatic-pet-accessories
//this loop builds the terrain
  float yOff =0;
  for (int y=1; y< rows-1; y++) {  
    float xOff =0;
    for (int x=1; x< cols-1; x++) {
      terrain[x][y]=map(noise(xOff, yOff), 0, 1, 0, 60);
      xOff+=0.1;
    }
    yOff+=0.1;
  }

}

void draw() {
  background(50);
  pushMatrix();
    translate(0,0,0);
    shape(background,0,0);
  popMatrix();
  
  //wave speed for water
  wave -=0.01;
  waveX +=0.001;
  
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
  
  FishX5 = FishX5+(XDirection5*swimSpeed);
  FishY5 = FishY5+(YDirection5);
  FishZ5 = FishZ5+(ZDirection5);
  water();
  terrain();
  seaweed();
  swim(); //movement function
  tank(); //render table and bowl
 
}
