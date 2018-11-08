// code 1 FA 18
// bryan ma

// Saves one PDF of the contents of the display window each time the mouse is pressed.

// this code is taken from the processing examples in libraries/pdf export. 

// adapt this code to your portrait, and print out the resulting PDF.

import processing.pdf.*;
PImage img;
//boolean saveOneFrame = false;

void setup() {
  frameRate(24);
  size(785, 785);
  img = loadImage("doggo.jpg");
  background(255);
  noStroke();
  beginRecord(PDF, "Portrait_1.pdf");
}

void draw() {
 
  //if(saveOneFrame == true) {
  //  beginRecord(PDF, "Portrait_.pdf"); 
  //}
  noStroke();
  int x = int(random(width));
  int y = int(random(height));
  color c = img.get(x, y);
  float r = red(c);
  float g = green(c);
  float b = blue(c);
  float d = dist(mouseX, mouseY, width/2, height/2);
  fill(r, g, b*3/2, d);
  float w = random(10, 20);
  float h = random(10, 20);
  ellipse(x, y, w, h);
  
  //if(saveOneFrame == true) {
  //  endRecord();
  //  saveOneFrame = false; 
  //}
}

void mousePressed() {
  //saveOneFrame = true; 
  endRecord();
  exit();
}
