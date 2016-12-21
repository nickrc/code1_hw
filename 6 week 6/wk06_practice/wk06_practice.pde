PImage img;

void setup() {
  size(800,420);
    imageMode(CENTER);
  img = loadImage("korra.jpg");
  noStroke();
  
}

void draw() {
  background(255);
  
  //image(img,400,400);
  
  
  for ( int i = 0; i < width; i += 15) {
    for ( int j = 0; j < height; j += 15) {
      color c = img.get(i,j);
      
      float r = red(c);
      float g = green(c);
      float b = blue(c);
      
      float total = r + g + b;
      
      
      
      //float s = map(total, 400, 800, 0, 100);
      
      fill(map(total, 0  , 800 , 0 , 255 ));
      
      rect(i,j,10,10);
      
      
    }
  }
  
  
}