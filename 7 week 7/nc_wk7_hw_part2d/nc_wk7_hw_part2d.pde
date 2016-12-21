import processing.pdf.*;

PImage img;

//float a = 0.0;
//float inc = TWO_PI/20;

void setup() {
  
  //size(800, 800);
  img = loadImage("helenm4.jpg");
  noStroke();
  size(800,800,PDF,"hmirren1.pdf");
}

void draw() {
  background(255);
  
  int widthStep = 10;
  int heightStep = 10;
  

  
  for (int i = 0; i < width; i+=widthStep) {
    for (int j = 0; j < height; j+=heightStep) {
      color c = img.get(i, j);
      
        //float r = red(c);
        //float g = green(c);
        //float b = blue(c);
          
      //float size = map(r,0,255,0,50);
      //float size1 = map(b,0,255,0,50);
      //float size2 = map(g,0,255,0,50);
      //float gsize= map(g,0,255,0,50);
      
      pushMatrix();
      translate(i,j);
      fill(c);
      //rotate(i+j+radians(frameCount));
      rect(0, 0, 2, 50+j);
      //a = a + inc;
      popMatrix();
    }
  }
  println("FINISHED");
  exit();
  
}