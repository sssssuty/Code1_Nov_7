// code 1 FA 18
// bryan ma

// generative portrait 2

// see description in w10_04_portrait1

// in the case of w10_05_portrait2, they would all need to be loaded into 
// an arraylist and drawn all together, as well as modified in order to have 
// a particle-like lifetime, or something similar.

PImage img;
ArrayList<Ball> balls = new ArrayList<Ball>();

void setup() {
  size(785, 785);
  frameRate(10);
  img = loadImage("doggo.jpg");
  background(255);
  noStroke();
  for (int i = 0; i < 20; i++) {
    balls.add(new Ball(random(width), random(height)));
  }
}

void draw() {
  //background(255);
  //for (int i = 0; i < img.width; i+=20) {
  //  for (int j = 0; j < img.height; j+=20) {
  //    color c = img.get(i,j);
  //    fill(c);
  //    ellipse(i, j, 20, 20);
  //  }
  //}
  int x = int(random(width));
  int y = int(random(height));
  color c = img.get(x, y);
  fill(c);
  for (int i = 0; i < balls.size(); i++) {
    Ball ball = balls.get(i);
    ball.display();
    ball.update();
}
}
