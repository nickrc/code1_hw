PImage img;

void setup() {
  size(660, 990);
  img = loadImage("portrait.jpg");
  noStroke();
  
}

void draw() {
  background(255);
  
  int widthStep = 10;
  int heightStep = 10;
  

  
  for (int i = 0; i < width; i+=widthStep) {
    for (int j = 0; j < height; j+=heightStep) {
      color c = img.get(i, j);
        float r = red(c);
        //float g = green(c);
      float size = map(r,0,255,0,50);
      //float gsize= map(g,0,255,0,50);
      
      fill(c);
      rect(i, j, size, 15);
    }
  }
}