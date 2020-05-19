// Assignment 7  [ due May 19 @ 8:59am ]
//Art 22 - Spring 2020
//Author: Joleane R Walker
import peasy.*;
import ddf.minim.*;

PeasyCam cam; // initialize camera

ArrayList<rain> rlist = new ArrayList<rain>();

int boundary = 2000;
int total = 1000;
PImage bg;
PShape space;
float rotX, rotY, rotZ, camX, camY, camZ; // rotation and translate nav 
Minim minim;
AudioPlayer warp;

void setup() {
  size(800, 800, P3D);

  cam = new PeasyCam(this, 100);
  
  bg=loadImage("rainforest.jpg");// image found @ https://thumbs.dreamstime.com/b/rainforest-panorama-mountain-ash-tree-ferns-yarra-ranges-national-park-victoria-australia-65796113.jpg

  space=createShape(SPHERE, boundary);
  space.setStroke(0);
  space.setTexture(bg);//wrapp texture around sphere

  minim = new Minim(this);
  warp=minim.loadFile("MarioWarp.mp3");//https://www.youtube.com/watch?v=uMCCxuGIGtw
  
  for ( int i=0; i < total; i++) {//populate array
    rlist.add( new rain(
      random(-boundary, boundary), // init x pos
      -boundary, //init y pos
      random(-boundary, boundary), // z pos
      5, // size
      random(10, 50)));//fall speed
  }
}


void draw() {
  background(0);
  noStroke();
  scene(); //build the scene
  nav();

  for (rain p : rlist) {
    p.display(); //make rain
  }
}
