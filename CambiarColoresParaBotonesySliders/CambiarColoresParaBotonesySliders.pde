import controlP5.*;
ControlP5 cp5;


int slider;
boolean boton = true;


void setup() {
  size(600, 600);
  background(255);

  cp5 = new ControlP5(this);

  cp5.begin();

  cp5.addSlider("v1")
    .setPosition(50, 20)
    .setSize(250, 50)
    .setRange(0, 1)
    .setValue(1)

    .setColorValue(color(255, 0, 0))
    .setColorBackground(color(128, 255, 255))
    .setColorActive(color(255, 187, 51))
    .setColorForeground(color(255, 187, 51))
    ;


  cp5.addToggle("boton")
    .setPosition(200, 200)
    .setSize(150, 150)
    .setMode(Toggle.SWITCH)

    .setColorValue(color(255, 0, 0))
    .setColorBackground(color(128, 255, 255))
    .setColorActive(color(255, 187, 51))
    .setColorForeground(color(255, 187, 51))
    ;

  cp5.end();
}


void draw() {
  background(0);
}
