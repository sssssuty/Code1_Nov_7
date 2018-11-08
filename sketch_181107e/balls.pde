class Ball {
  float posX;
  float posY;
  float Xspeed;
  float Yspeed;
  float s;

  Ball(float posX, float posY) {
    this.posX = posX;
    this.posY = posY;
    this.Xspeed = random(-10, 10);
    this.Yspeed = random(-10, 10);
    this.s = random(50, 100);
  }

  void display() {
    ellipse(this.posX *3/2, this.posY*3/2, s, s);
  }

  void update() {
    this.posX += this.Xspeed;
    this.posY += this.Yspeed;
    s = s -1;

    if (this.posX > width-this.s/2 || this.posX < this.s/2) {
      this.Xspeed *= -1;
    }
    if (this.posY > height-this.s/2 || this.posY < this.s/2) {
      this.Yspeed *= -1;
    }
    
    if (s > 100 || s < - 100){
      s = -s;
    }
    
    //noStroke();
    //fill((int(map(posX, 0, 255,0,width))),(int(map(posY, 0, 255,0,height))), 0);
  }
}
