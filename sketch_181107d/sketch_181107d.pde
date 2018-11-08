// code 1 FA 18
// bryan ma

// generative portrait 1

// this sketch, as well as w10_05_portrait2, uses the basic approach we used
// in class to create a generative representation of an image loaded into memory.
// use one of these two sketches as the starting point to create your own 
// generative graphic "portrait". try using red(), green(), blue(), saturation(), 
// hue(), and brightness() to get values to represent in your drawing.

// bonus - apply a class inspired by w10_03_paintbrush to your approach.
// instead of drawing a simple ellipse or other shape, create an instance 
// of the brushstroke class at every sourced point that you get() the color on.



PImage img;

void setup() {
  size(785, 785);
  img = loadImage("doggo.jpg");
  background(255);
  noStroke();
}

void draw() {
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
}
