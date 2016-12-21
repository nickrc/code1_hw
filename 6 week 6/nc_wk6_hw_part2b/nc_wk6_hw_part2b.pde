int NUMBALLS = 50;

float[] ballX = new float[NUMBALLS];
float[] ballY = new float[NUMBALLS];
float[] dx = new float[NUMBALLS];
float[] dy = new float[NUMBALLS];

float r;
float g;
float b;



void setup() {
  size(800,800);
  
  noStroke();
  textAlign(CENTER, CENTER);
  
  for (int i = 0; i < NUMBALLS; i++) {
    ballX[i] = width/2;
    ballY[i] = height/2;
    dx[i] = random(-5,5);
    dy[i] = random(-5,5);
    
    //ballX[i] = 0;
    //ballY[i] = map(i,0,NUMBALLS,0,height);
    //dx[i] = map(i,0,NUMBALLS,0,5);
    //dy[i] = 0;
  }
}

void draw() {
  //background(255);
  
  float r = map(ballX[1],0,width,0,255);
  float g = map(ballY[1],0,height,0,255);
  float b = map(ballX[1],0,width/2,0,255);
  
  
  for (int i = 0; i < NUMBALLS; i++) {
    fill(map(i,0,NUMBALLS,50,255));
    fill(r,g,b);
    ellipse(ballX[i], ballY[i], i+10, i+10);
    fill(0);
    //text(i, ballX[i], ballY[i]);
    ballX[i] += dx[i];
    ballY[i] += dy[i];
    
    if (ballX[i] > width || ballX[i] < 0) {
      ballX[i] -= dx[i];
      dx[i] = -dx[i];
    }
    
    if (ballY[i] > height || ballY[i] < 0) {
      ballY[i] -= dy[i];
      dy[i] = -dy[i];
    }
    
  }
}