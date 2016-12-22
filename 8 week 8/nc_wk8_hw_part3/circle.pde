class Particle {
  float x; 
  float y;
  float dx;
  float dy;
  color c;
  float s;
  float life;

  //constructor
  Particle(float _x, float _y) {
    x = _x;
    y = _y;
    dx = 1;
    dy = 1;
    c = color(150);
    s = random(10,20);
    println("raindrop");
    life = 30;
  }

  void display() {
    noStroke();
    fill(c);
    ellipse(x, y, s, s);
  }

  void update() {
    life++;
   // s = map(life, 0, 30, 0, 60 );
    s = life/2 + 1;
    
    if (x < s/2 || x > width-s/2) {
      dx *= -1;
      x += dx;
    } else {
      x += dx;
    } 
    
    if (y < s/2 || y > height-s/2) {
      dy *= -1;
      y += dy;
    } else { 
      y += dy;
    }
  }
  
  void setSize(float siz) {
    s = siz;
  }
}