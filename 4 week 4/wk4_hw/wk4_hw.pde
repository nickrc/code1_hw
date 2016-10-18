//have a random number of rectangles bouncing around the screen with no trail. 
//when mouse is clicked once have them leave a trail and then when clicked again the trail stops.

float rectX;
float rectY;

float ballSize;

float speedX;
float speedY;

float bounceShape;

float x;

void setup() {
  
  size(600,600);
  background(255);
  rectMode(CENTER);
  
  rectX = width/2;
  rectY = height/2;
  
  
  speedX = random(1,10);
  speedY = random(1,10);
  
  ballSize = 10;
  
  x = 150;
  
}

void draw() {
  
   bounceShape( 10, 10, 10);
  
  
  
  noStroke(); 
  fill(x);
  rect(rectX, rectY, ballSize, ballSize);
  
  rectX += speedX;
  rectY += speedY;
  
  if (rectX > width - ballSize/2 || rectX < ballSize/2) {
    rectX -= speedX;
    speedX = -speedX;
  }
  
  if (rectY> height - ballSize/2 || rectY < ballSize/2) {
    rectY -= speedY;
    speedY = -speedY;
  }
  

  
  
  
}

void mouseClicked(){
  if (x == 150) {
     x = 255;
  } else {
     x = 150;
}
}

void bounceShape( int rectX, int rectY, int ballSize ) {
 
  noStroke(); 
  fill(150,150,150);
  rect(rectX, rectY, ballSize, ballSize); 
  
  
}