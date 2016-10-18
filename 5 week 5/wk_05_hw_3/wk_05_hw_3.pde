//draw katamari cousin and make into grid
//create different head shapes in similar grid
//when mouse moves have the face appear in a different place
//have the color change from solid to solid with mouse position 


float x = 100;
float y = 100;

float r = 0;
float g = 0;
float b = 0;



float i = 0;
float j = 0;
int k ;
int l ;
 
int hor = 0;
int ver = 0;


int[] array = {0, 100, 200, 300, 400, 500, 600, 700};

void setup() {
  size(800,800);
  noStroke();
  rectMode(CENTER);
 
  

  
  
}


void draw() {
  background(255);
  frameRate(2);
  
  k = int(random(0, 7));
  l = int(random(0, 7));
  
  hor = array[k];
  ver = array[l];
  
  
  for(i=0; i< 700; i= i +100){
    for(j=0; j<700; j=j+100){
    drawKatamari(i, j);
    }
  }
  
 
float r = random(255);
float g = random(255);
float b = random(255);
 
  x = 100;
  while( x < width) {
   y = 100;
   while(y < height) {
    
    
    //fill(map(mouseX, 0, width, 0, random(255) ));
    
    fill( r, g, b);
    
    rect( x, y, 90, 70);
    
    y = y + 100;
   }
   x = x + 100;
  }
  
  if(mouseX > 100 && mouseX < 700){
    appear();
  }
  
  

  
}


void drawKatamari(float i, float j ) {
  

 
    fill(255,229,204);
  rect( 100 + i,100 +j,65,50);
  
  fill(255, 0, 0);
  rect( 100+ i, 110+j, 10, 6);
  
  fill(255,128,0);
  triangle(100+i,95+j,102+i,105+j,98+i,105+j);
  
  fill(0, 0, 51);
  ellipse( 112+i, 90+j, 7, 7);
  
  fill(0, 0, 51);
  ellipse( 88+i, 90+j, 7, 7);
  
  
 //i = 100;
 // while( i < width) {
 //  j = 100;
 //  while(j < height) {
    
 //   rect( i, j, 50, 50);
    
 //   j = j + 100;
 //  }
 //  i = i + 100;
 // }

  
  
  
  
}


void appear(){
  
  
  
    fill(255,229,204);
  rect( 100 + hor,100 +ver,65,50);
  
  fill(255, 0, 0);
  rect( 100+ hor, 110+ver, 10, 6);
  
  fill(255,128,0);
  triangle(100+hor,95+ver,102+hor,105+ver,98+hor,105+ver);
  
  fill(0, 0, 51);
  ellipse( 112+hor, 90+ver, 7, 7);
  
  fill(0, 0, 51);
  ellipse( 88+hor, 90+ver, 7, 7);
  
}