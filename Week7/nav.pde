void nav() {
  if (keyPressed) {
    if (key == CODED) {
      if (keyCode == UP) {
        camZ+=10; // increase navigation z position by 10
      }
      if (keyCode == DOWN) {
        camZ-=10; // decrease navigation z position by 10
      }

      if (keyCode == LEFT) {
        rotY++; // increase Y-axis rotation
      }
      if (keyCode == RIGHT) {
        rotY--; // decrease -axis rotation
      }
    }
  }
  if (camZ>2000 || camZ<-2000) {
    warp.play(); //plays the mario warp sound
    camZ=0; //puts you back at start
    warp.rewind();
  }
}
