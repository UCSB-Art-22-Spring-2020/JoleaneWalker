void sound(){
  beat.detect(music.mix);
  if(beat.isOnset()){
    fft.forward( music.mix );
    beat1+=15;
    beat2+=fft.getBand(20);
    beat3+= random(0,5);

  }
  if(beat1>=255){
    beat1=0;
  }
  if(beat2>=255){
    beat2=0;
  }
  if(beat3>=255){
    beat3=0;
  }

}
