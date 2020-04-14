// Assignment 2 Texture Generator [ due April 14 @ 8:59am ]
//Art 22 - SPring 2020
//Author: Joleane R Walker
float shape;

void setup(){
  size (800,400);
}

void draw(){
  shape = random(0,10);
//loops
 if (keyPressed){
   fill( random(0, 255), random(0, 255), random(0, 255), random(45,75)); //random fill color
 }
 else{
fill(0);
 }
  if(shape<5){
    for(int i = 0; i<50; i++){  //larger loop iterations make texture look
      noStroke();
      ellipse(random(0, width), random(0, height), random(10,35), random(10,50));
        //Alpha Channel Control
    }// for
  }//if
  else{
    for(int i = 0; i<50; i++){  //larger loop iterations make texture look
      noStroke();
      //fill( random(0, 255), random(0, 255), random(0, 255), random(45,75)); //random fill color
      rect(random(0, width), random(0, height), random(10,40), random(10,50)); // rectangle @ random position
    }//for loop
  }//rectangle else
}//draw()
