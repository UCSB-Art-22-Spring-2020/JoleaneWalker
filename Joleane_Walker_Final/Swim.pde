void swim() {
  //direction change for fish 1
  if (FishX>= 350 || FishX<=-350) {
    XDirection1=XDirection1*-1;
    swimSpeed=random(1, 5);
  }
  if (FishY>= 350 || FishY<=-250) {
    YDirection1=YDirection1*-1;
  }
  if (FishZ>= 350 || FishZ<=-350) {
    ZDirection1=ZDirection1*-1;
  }

  //direction change for fish 2
  if (FishX2>= 350 || FishX2<=-350) {
    XDirection2=XDirection2*-1;
    swimSpeed=random(1, 5);
  }
  if (FishY2>= 350 || FishY2<=-250) {
    YDirection2=YDirection2*-1;
  }
  if (FishZ2>= 350 || FishZ2<=-350) {
    ZDirection2=ZDirection2*-1;
  }
  //direction change for fish 3
  if (FishX3>= 350 || FishX3<=-350) {
    XDirection3=XDirection3*-1;
    swimSpeed=random(1, 5);
  }
  if (FishY3>= 350 || FishY3<=-250) {
    YDirection3=YDirection3*-1;
  }
  if (FishZ3>= 350 || FishZ3<=-350) {
    ZDirection3=ZDirection3*-1;
  }
  //direction change for fish 4
  if (FishX4>= 350 || FishX4<=-350) {
    XDirection4=XDirection4*-1;
    swimSpeed=random(1, 5);
  }
  if (FishY4>= 350 || FishY4<=-250) {
    YDirection4=YDirection4*-1;
  }
  if (FishZ4>= 350 || FishZ4<=-350) {
    ZDirection4=ZDirection4*-1;
  }
}
