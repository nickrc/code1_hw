//PImage img;

picture a;




void setup() {
  size(800,800);
  //img = loadImage("katamari_new.png");
  
  a = new picture(100,100);
  
}


void draw() {
  background(255);
  
  a.display();
  a.keyPressed();
}