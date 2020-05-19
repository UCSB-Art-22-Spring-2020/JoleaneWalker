class rain {

  float x, y, z;
  float size;
  float speedX, speedY, speedZ;

  rain( float x_, float y_, float z_, float size_, float speedY_) {
    x= x_;
    y= y_;
    z= z_;
    size = size_;
    speedY = speedY_;
  }

  void display() {
    pushMatrix();
    strokeWeight(size);
    stroke(185,255,253);//light blue
    point(x, y, z);
    popMatrix();
    y = y + speedY;

    if ( y > boundary) {
      x = random(-boundary, boundary);
      y = -boundary;//top of the sphere
      z = random(-boundary, boundary);
    }
  }
}
