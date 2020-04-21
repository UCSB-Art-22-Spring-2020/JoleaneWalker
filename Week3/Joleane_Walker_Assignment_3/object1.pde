void object1() {
  fill(71, 143, 196, 50);
  noStroke();
  ellipse(x1, y1, 50, 50);

  //noise() gives a value between 0 to 1
  float m = noise(noisePosX);//noise value for x
  float n = noise(noisePosY);//noise value for y

  x1=map(m, 0, 1, 0, width);
  y1=map(n, 0, 1, 0, height);

  noisePosX=noisePosX+0.005; // the larger the value the larger the jump
  noisePosY=noisePosY+0.005; // the larger the value the larger the jump

  image(spray, x1, y1, spray.width/5, spray.height/5);
}
