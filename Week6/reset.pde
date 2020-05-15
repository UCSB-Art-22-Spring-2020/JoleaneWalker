void reset(){
 //clears images & Stops Song playback
  x=width/2;
  y=0;
  image(bg,0,0);
  song.pause();
}
