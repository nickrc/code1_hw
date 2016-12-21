PImage IMG_NAME;

float k;

int[] ellipseXPos = new int[10];

void setup() {
  size(1000, 600);
  
  k = random(100,500);
  
  IMG_NAME = loadImage("katamari1.png");

  for (int i = 0; i < ellipseXPos.length; i++) {
    ellipseXPos[i] = 0;
  }
}

void draw() {
  fill(250,20);
  noStroke();
  rect(0,0,width,height);
  
  
  stroke(0);
  for (int i = 0; i < ellipseXPos.length; i++) {
    //fill(map(i, 0, ellipseXPos.length, 0, 255));
    image(IMG_NAME, ellipseXPos[i], k*i,100,100);
    //rect(ellipseXPos[i], i * 20, 20, 20);
  }

  for (int i = 0; i < ellipseXPos.length; i++) {
    if (ellipseXPos[i] < width) {
      ellipseXPos[i] += i;
    } else {
      ellipseXPos[i] = 0;
    }
  }
}