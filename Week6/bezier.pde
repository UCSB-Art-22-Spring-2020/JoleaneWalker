void stem(){
    noFill();
    strokeWeight(random(0,10));
    stroke(random(50,103), 0,random(0, 100));
    bezier(x, y,  80, 33,  80, 466,  33, 466);//found this coding on https://processing.org/reference/bezier_.html
}
