//draw katamari cousin 
//draw katamari sphere 
//draw simple objects for sphere to bounce into 

float drawCousinBody;
float DrawCousinHead;
float drawKatamari;

float x;
float y;

float a;
float b;

float i;
float j;

float z;

void setup() {
  size(800,800);
  background(255);
  rectMode(CENTER);
}

void draw() {
  
  background(255);
  noStroke();
  drawCousinBody(100,160);
  drawCousinHead(100,100);
  
  
  
  drawKatamari+=1;
  
  
  //translate();
  
  
  pushMatrix();
    
  
  translate(200,220);
  
  rotate(radians(drawKatamari));
  fill(0,0,51);
  
  z = z+=.01;
  
  scale(z+1);
  
   if ( z > 2){
   
     z = 0.1 ;
  
   }
  
  
  drawKatamari(0,0);
  
  
  
  
  
  
  popMatrix();
    
 
  
}

void drawCousinHead(int a, int b) {
  
  fill(0,102,102);
  //rect(100,60, 5,30);
    rect(a,b-40,5,30);
  
  fill(102,255,255);
  //ellipse(100,45,10,10); 
    ellipse(a,b-55,10,10);
  
  fill(0,153,153);
  //rect(100,100, 100, 65);
    rect(a,b,100,65);
    
  fill(255,229,204);
  //rect( 100,100,65,50);
    rect(a,b,65,50);
  
  fill(255, 0, 0);
  //rect( 100, 110, 10, 6);
    rect(a,b+10,10,6);
  
  
  fill(255,128,0);
  //triangle(100,95,102,105,98,105);
    triangle(a,b-5,a+2,b+5,a-2,b+5);
  
  fill(0, 0, 51);
  //ellipse( 112, 90, 7, 7);
    ellipse(a+12, b-10,7,7);
  
  
  fill(0, 0, 51);
  //ellipse( 88, 90, 7, 7);
    ellipse(a-12,b-10,7,7);
  
}


void drawCousinBody(int i, int j){
  
  fill(0,25,51);
 //rect(80,210,10,45);
   rect(i-20,j+50,10,45);
  
  //rect(120,210,10,45);
    rect(i+20,j+50,10,45);
  
  fill(0,153,153);
  //rect(100,160, 50, 60);
    rect(i,j,50,60);
  
 
  //ellipse(80,235,15,15);
    ellipse(i-20,j+75,15,15);
  
  //ellipse(120,235,15,15);
    ellipse(i+20,j+75,15,15);
  
  
}

void drawKatamari(int x, int y){
 
  
  //ellipse(200,220,50,50);
    ellipse(x,y,50,50);
  
  //ellipse(200,195,15,15);
    ellipse(x,y-25,15,15);
  
  //ellipse(200,245,15,15);
    ellipse(x,y+25,15,15);
  
  //ellipse(175,220,15,15);
    ellipse(x-25,y,15,15);
  
  //ellipse(225,220,15,15);
    ellipse(x+25,y,15,15);
  
  
  
  
}