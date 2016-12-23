//make 2 buttons
//make ball bounce and color change on one button to start action second to stop it

int shape1X, shape1Y;
int shape1W, shape1H;

int shape2X, shape2Y;
int shape2W, shape2H;

float m;

boolean colorchangebutton = true;



void setup() {
  size(800,800);
  background(255);
  //rectMode(CENTER);
  
  shape1X = 100;
  shape1Y = 600;
  shape1W = 100;
  shape1H = 100;
  
  shape2X = 600;
  shape2Y = 600;
  shape2W = 100;
  shape2H = 100;
  
  
  
}


void draw() {
  
  if (mouseX > shape1X && mouseX < shape1X + shape1W &&
       mouseY > shape1Y && mouseY < shape1Y + shape1H) {
         ballcolor();
         fill(0,0,255);
    
  } else {
    
    fill(255,128,0); 
}


  noStroke(); 
  rect(shape1X,shape1Y,shape1W,shape1H);
  
   if (mouseX > shape2X && mouseX < shape2X + shape2W &&
       mouseY > shape2Y && mouseY < shape2Y + shape2H) {
        
         fill(255,0,0);
       }else{
          fill(255);
         ballcolor();
         
         fill(0,255,0);
       }
  noStroke();
  rect(shape2X,shape2Y,shape2W,shape2H);
}



  void ballcolor() {
    
    noStroke();
    fill(255,255,0);
    ellipse(300,300,200,200);
   
   
    
   // m = map(mouseX,0,width,0,255);
  
  
  
  }