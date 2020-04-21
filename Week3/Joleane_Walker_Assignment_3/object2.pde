void object2() {
  fill(196, 71, 140, 50);
  noStroke();
  ellipse(x2, y2, 35, 35);

  //noise() gives a value between 0 to 1
  float o = noise(noisePosX2);//noise value for x
  float p = noise(noisePosY2);//noise value for y

  x2=map(o, 0, 1, 0, width);
  y2=map(p, 0, 1, 0, height);

  noisePosX2=noisePosX2+0.009; // the larger the value the larger the jump
  noisePosY2=noisePosY2+0.009; // the larger the value the larger the jump

  image(spray2, x2, y2, spray.width/10, spray.height/10);
}
