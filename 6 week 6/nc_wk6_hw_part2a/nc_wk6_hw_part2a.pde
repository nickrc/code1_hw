float r;
float g;
float b;

float a = 10;

float inc = TWO_PI/25.0;

float[] xPosArr = new float[5];

void setup() {
  size(600,600);
  noStroke();
  
  for (int i = 0; i < xPosArr.length; i++) {
    xPosArr[i] = 100 + i * 100;
  }
}

void draw() {
  background(204,229,255);
  
   r = 150;
   g = 75;
   b = 100;
  
  for (int i = 0; i < xPosArr.length; i++) {
    for(int j = 0; j < xPosArr.length; j++) {
    xPosArr[i] += random(-i,i);
    
    //fill(map(xPosArr[i], 0, width, 0, 255));
    fill(r,g,b);
    ellipse(xPosArr[i]+sin(a)*40.0, xPosArr[j], 50, 50);
    }
  }
}