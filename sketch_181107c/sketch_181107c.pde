// code 1 FA 18
// bryan ma

// color variable as class field

// this sketch uses a basic ball or particle-type behavior
// to create a "painting" kind of effect. while the mouse is 
// pressed, a new instance is created every five frames. 

// change the class definition of "Brushstroke" to have a 
// color field. Then change the constructor arguments to accept 
// a color argument, which should set the object's color field. 

// finally, update the line of code which creates new brushstrokes
// to accept a color value. try using a color value which maps to 
// the position of the mouse on the screen. see the example gif
// to get an idea.

Brushstroke b;
int r, g, bb;

void setup() {
  size(600, 600);
  noStroke();
  background(255);
}

void draw() {
  r = int(map(mouseX, 0, width, 0, 255));
  g = int(map(mouseY, 0, height, 0, 255));
  bb = int(dist(mouseX, mouseY, width/2, height/2));
  if (mousePressed) {
    if (frameCount % 5 == 0) {
      b = new Brushstroke(mouseX, mouseY);
    }

    if (b != null) {
      b.update();
      b.display();
    }
  }
}


class Brushstroke {
  float x, y;
  float vx, vy;
  float siz;
  float lifetime = 10;

  Brushstroke(float x, float y) {
    this.x = x;
    this.y = y;
    vx = random(-8, 8);
    vy = random(-8, 8);
    siz = random(30, 60);
  }

  void update() {
    x += vx;
    y += vy;
  }

  void display() {
    fill(r, g, bb);
    noStroke();
    ellipse(x, y, siz, siz);
  }
}
