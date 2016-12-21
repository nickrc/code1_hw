int COLS_NUM = 15;
int ROWS_NUM = 15;

float[][] posx = new float[COLS_NUM][ROWS_NUM];
float[][] posy = new float[COLS_NUM][ROWS_NUM];

float a = 0.0;
float inc = TWO_PI/25/0;


void setup() {
  size(600, 600);

  float xStepAmount = (width-200)/(posx.length - 1);
  float yStepAmount = (height-200)/(posx[0].length - 1);

  for (int i = 0; i < posx.length; i++) {
    for (int j = 0; j < posx[0].length; j++) {
      posx[i][j] = 100 + i * xStepAmount;
      posy[i][j] = 100 + j * yStepAmount;
    }
  }

  strokeWeight(5);
  stroke(255);
}

void draw() {
  background(255);

  for (int i = 0; i < posx.length; i++) {
    for (int j = 0; j < posx[0].length; j++) {
      float r = map(i,0,posx.length,0,255);
      float g = map(j,0,posx[0].length,0,255);
      float b = map(dist(mouseX,mouseY,posx[i][j],posy[i][j]),0,200,0,255);
      fill(r,g,b);
      rect(posx[i][j], posy[i][j],25,25);
      //a = a + inc;
      //posx[i][j] += random(-1,1);
      //posy[i][j] += random(-1,1);
      //posx[i][j] += posx[i][j]+sin(a)*40.0;
      
      posx[i][j] += 4 ;
      //posy[i][j] += ; 
      
   
        if (posx[i][j] > width || posx[i][j] < 0) {
            posx[i][j] = 0;
    }
    
     //if ( posy[i][j] > height || posy[i][j] < 0) {
       
     //}
    
    
  }
  
  
  }

  
}