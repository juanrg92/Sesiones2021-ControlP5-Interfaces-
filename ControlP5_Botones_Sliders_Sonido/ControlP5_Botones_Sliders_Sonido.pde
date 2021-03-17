import processing.sound.*;
import controlP5.*;


SoundFile base1;
SoundFile base2;
SoundFile base3;

ControlP5 cp5;




float v1;
boolean boton1 = true;
float v2;
boolean boton2 = true;
float v3;
boolean boton3 = true;



void setup() {
  size(600, 600);
  background(0);


  base1 = new SoundFile(this, "ciencia.mp3");
  base2 = new SoundFile(this, "ciencia2.mp3");
  base3 = new SoundFile(this, "ciencia3.mp3");


  cp5 = new ControlP5(this);

  cp5.begin();

  ////////////////////////////////////////
  cp5.addToggle("boton1")
    .setPosition(10, 200)
    .setSize(150, 150)
    .setMode(Toggle.SWITCH)   


    .setColorValue(color(255))
    .setColorBackground(color(255, 0, 0))
    .setColorActive(color(155, 0, 0))
    .setColorForeground(color(155, 0, 0))
    ;

  cp5.addSlider("v1")
    .setPosition(10, 200+200)
    .setSize(150, 20)
    .setRange(0, 1)
    .setValue(1)


    .setColorValue(color(255))
    .setColorBackground(color(255, 0, 0))
    .setColorActive(color(155, 0, 0))
    .setColorForeground(color(155, 0, 0))
    ;
  ////////////////////////////////////////
  cp5.addToggle("boton2")
    .setPosition(200, 200)
    .setSize(150, 150)
    .setMode(Toggle.SWITCH)


    .setColorValue(color(255))
    .setColorBackground(color(0, 255, 0))
    .setColorActive(color(0, 155, 0))
    .setColorForeground(color(0, 155, 0))
    ;

  cp5.addSlider("v2")
    .setPosition(200, 200+200)
    .setSize(150, 20)
    .setRange(0, 1)
    .setValue(1)



    .setColorValue(color(255))
    .setColorBackground(color(0, 255, 0))
    .setColorActive(color(0, 155, 0))
    .setColorForeground(color(0, 155, 0))
    ;
  ////////////////////////////////////////
  cp5.addToggle("boton3")
    .setPosition(400, 200)
    .setSize(150, 150)
    .setMode(Toggle.SWITCH)

    .setColorValue(color(255))
    .setColorBackground(color(0, 0, 255))
    .setColorActive(color(0, 0, 155))
    .setColorForeground(color(0, 0, 155))
    ;

  cp5.addSlider("v3")
    .setPosition(400, 200+200)
    .setSize(150, 20)
    .setRange(0, 1)
    .setValue(1)


    .setColorValue(color(255))
    .setColorBackground(color(0, 0, 255))
    .setColorActive(color(0, 0, 155))
    .setColorForeground(color(0, 0, 155))
    ;
  ////////////////////////////////////////
  cp5.end();
}




void draw() {
  background(0);


  /////////////////////////
  base1.amp(v1);

  if (boton1) {
    base1.stop();
  } else {
    if (!base1.isPlaying()) {
      base1.loop();
    }
  }

  /////////////////////////
  base2.amp(v2);

  if (boton2) {
    base2.stop();
  } else {
    if (!base2.isPlaying()) {
      base2.loop();
    }
  } 
  /////////////////////////
  base3.amp(v3);

  if (boton3) {
    base3.stop();
  } else {
    if (!base3.isPlaying()) {
      base3.loop();
    }
  }
  /////////////////////////
}
