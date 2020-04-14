// Assignment 1 Dynamic Drawing [ due April 7 @ 8:59am ]
//Art 22 - SPring 2020
//Author: Joleane R Walker
//text, keyPressed were found on the processing examples page
//variables
String Text= "Click mouse to change Color";
//setup 
void setup(){
  size(500,500); //create window 500x500
  background(155);
}

//draw stuff
void draw(){
  text("Press Any Key to Clear",150,20);//found function on https://processing.org/examples/words.html
  if (keyPressed){//If a keyboard key is pressed it will clear the drawing 
    background(155);//reset to black
  }
  else {
    if(mouseY>50){
      ellipse(mouseX, mouseY, 60, 46);  
      if (mousePressed) {
          fill(0,130,73,25);//change fill color to green when mouse button is pressed rgbA - A=alpha transparency
           ellipse(mouseX, mouseY, 46, 60);//change primitive size & shape on click
      } else {
        fill(153,0,5,80); //make shap red
      }  
    }
    else{
      fill(153,0,5,0); //makes it so area above the 50pixels on the y axis is clear so you can always see the text
    }
  }
}
