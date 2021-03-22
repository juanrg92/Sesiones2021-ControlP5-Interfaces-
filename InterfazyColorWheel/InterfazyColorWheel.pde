import processing.sound.*;
import controlP5.*;
ControlP5 cp5;


boolean boton = false;
boolean boton0 = false;


SoundFile base;

int c = color(100);

float x;
float y;
float tamano;

void setup() {
  size(900, 900);
  background(255);

  base = new SoundFile(this, "ciencia2.mp3");

  y = height/2;

  cp5 = new ControlP5(this);

  cp5.begin();

  cp5.addColorWheel("c", 250, 10, 200 ).setRGB(color(128, 0, 255));

  cp5.addSlider("tamano")
    .setPosition(10, 20)
    .setSize(200, 20)
    .setRange(10, 300)
    .setValue(100)
    ;

  cp5.addSlider("x")
    .setPosition(10, 90)
    .setSize(200, 20)
    .setRange(0, width)
    .setValue(0)
    ;

  cp5.addToggle("boton")
    .setPosition(10, 50)
    .setSize(80, 20)
    .setMode(Toggle.SWITCH)
    ;


  cp5.end();
}


void draw() {
  background(0);


  if (boton) {
    if (!base.isPlaying()) {
      base.play();
    }
  } else {
    base.stop();
  }


  fill(c);
  ellipse(x, y, tamano, tamano);
}
