
import controlP5.*;
ControlP5 cp5;


float slider;
float slider0;
float slider1;

boolean boton = false;
boolean boton0 = true;

void setup() {
  size(900, 900);
  background(255);

  cp5 = new ControlP5(this);


  cp5.addSlider("slider")
    .setPosition(20, 20)
    .setSize(200, 25)
    .setRange(0, 500)
    .setValue(100)
    ;

  cp5.addSlider("slider1")
    .setPosition(250, 20)
    .setSize(200, 25)
    .setRange(0, 360)
    .setValue(0)
    ;

  cp5.addSlider("slider0")
    .setPosition(20, 20+40)
    .setSize(200, 25)
    .setRange(0, width)
    .setValue(100)
    ;

  cp5.addToggle("boton")
    .setPosition(20, 20+75)
    .setSize(80, 80)
    .setMode(Toggle.SWITCH)
    ;

  cp5.addToggle("boton0")
    .setPosition(20, 20+180)
    .setSize(80, 80)
    .setMode(Toggle.SWITCH)
    ;

  cp5.end();
}


void draw() {
  if (boton0) {
    background(0);
  } else {
    background(255, 0, 255);
  }


  if (boton) {
    fill(255, 0, 0);
  } else {
    fill(255);
  }

  translate(slider0, height/2);
  rotate(radians(slider1));
  rectMode(CENTER);
  rect(0, 0, slider, slider);
  resetMatrix();
}
