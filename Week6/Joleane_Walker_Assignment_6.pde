// Assignment 6  [ due May 12 @ 8:59am ]
//Art 22 - Spring 2020
//Author: Joleane R Walker
//I appologize for my lateness on this I had a family situation where I had to make an unexpected trip, and I was away from a computer
PImage bg;
PShape star;
import ddf.minim.*;
import ddf.minim.analysis.*;
float x,y;


Minim minim;
AudioPlayer song;
BeatDetect beat;
FFT fft;

void setup(){
  size(500,500);
  
  //set bg
  bg = loadImage("bg_texture.jpg");
    //resoure image found @ https://i.pinimg.com/originals/c4/b9/0b/c4b90b5947936da4d9b6b5378dbb39d0.jpg
  
  //init song
  minim = new Minim(this);
  song=minim.loadFile("Funhouse.mp3",2048);
    //Funhouse by P!nk
  song.loop();
  //beat detection
  beat = new BeatDetect();
  beat.setSensitivity(150); 
  
    fft = new FFT( song.bufferSize(), song.sampleRate() );
    
  x=width/2;
  y=0;
  image(bg,0,0);
}
void draw(){
  println("x ",mouseX, ", y ",mouseY );
  beat.detect(song.mix);
  if(beat.isOnset()){
    fft.forward( song.mix );  
    
    noFill();
    strokeWeight(random(0,10));
    stroke(0, 0, 0);
    bezier(x, y,  80, 33,  80, 466,  33, 466);
    ellipse(x, y, 55, 55);
    y+=5;
    x= map(fft.getBand(10), 0, 300, 0, 500);
  }
  if(y>=height){ //reset vertical position
    y=0;
  }
}
