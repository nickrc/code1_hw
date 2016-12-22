//referenced nature of code and other examples 

//click to create blob lava lamp 

// The Nature of Code
// Daniel Shiffman
// http://natureofcode.com

class Mover {

  PVector location;
  PVector velocity;
  PVector acceleration;
  float topspeed;
  float startingSize;
  float oscSize;
  float oscCount;
  float amplitude;
  float r;
  float g;
  float b;
  float lifetime;

  Mover() {
    oscCount = 0;
    amplitude = 100;
    startingSize =100;
    
    
    location = new PVector(mouseX, mouseY);
    velocity = new PVector(0, 0);
    acceleration = new PVector(0.001, -0.003);
    topspeed = 10;
    
    lifetime = 800;
  }

  void update() {
    velocity.add(acceleration);
    velocity.limit(topspeed);
    location.add(velocity);
    
    lifetime--;
  }

  void display() {
    noStroke();
    strokeWeight(2);
    r = location.x;
    g = location.y;
   // b = location.y-location.x;
    
    fill(r,g,b);
    oscCount += 0.03;
    oscSize = startingSize + sin(oscCount) * amplitude;
    ellipse(location.x, location.y, oscSize, oscSize);
  }

  void checkEdges() {

    if (location.x > width) {
      location.x = 0;
    } 
    else if (location.x < 0) {
      location.x = width;
    }

    if (location.y > height) {
      location.y = 0;
    } 
    else if (location.y < 0) {
      location.y = height;
    }
  }
}