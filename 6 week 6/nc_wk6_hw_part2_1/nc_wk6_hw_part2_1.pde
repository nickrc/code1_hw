PImage IMG_NAME;

//float k;

int[] ellipseXPos = new int[3];

int[] ellipseYPos = new int[3];

void setup() {
  size(1000, 600);
  
  //k = random(100,400);
  
  IMG_NAME = loadImage("katamari3.png");

  for (int i = 0; i < ellipseXPos.length; i++) {

    ellipseXPos[i] = 0;
    
    
  }
  
      for (int j = 0; j < ellipseYPos.length; j++){
        ellipseYPos[j] = 0;
      }
}

void draw() {
  background(255);
  fill(250,20);
  noStroke();
  rect(0,0,width,height);
  
  
  stroke(0);
  for (int i = 0; i < ellipseXPos.length; i++) {
    for (int j = 0; j < ellipseYPos.length; j++) {
    //fill(map(i, 0, ellipseXPos.length, 0, 255));
    image(IMG_NAME, ellipseXPos[i], ellipseYPos[j],100,100);
    //rect(ellipseXPos[i], i * 20, 20, 20);
    }
  }

  for (int i = 0; i < ellipseXPos.length; i++) {
    for (int j = 0; j < ellipseYPos.length; j++){
    if (ellipseXPos[i] < width) {
      ellipseXPos[i] += i;
    } else {
      ellipseXPos[i] = 0;
    }
    if (ellipseYPos[j] < height) {
     ellipseYPos[j] += j;
    } else {
      ellipseYPos[j] = 0;
    }
    }
  }
}