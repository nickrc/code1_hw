ArrayList<Walker> walkerList = new ArrayList<Walker>();

float r;
float g;
float b;



void setup() {
  size(1000, 700);
  noStroke();
  background(255);
}

void draw() {
  for (Walker walker : walkerList) {
    walker.move();
    walker.display();
  }
}

void mousePressed() {
  walkerList.add(new Walker(mouseX, mouseY));
}

class Walker {
  float x, y, xStep, yStep, siz;

  Walker(float x, float y) {
   
    this.x = x;
    this.y = y;
    this.siz = 2;
    this.xStep = this.siz * 2;
    this.yStep = this.siz * 2;
  }

  void display() {
      
    
    fill(r, g, b);
    ellipse(x, y, siz, siz);
    
    if (x > 200){
      
       siz++;
       
       if (siz > 10){
         
        siz--; 
       }
      
    }
   
 
  }
   void move() {
    int rand = (int)random(4);
    switch (rand) {
    case 0:
      x-=xStep;
      r = r+1;
      if (r > 255) {
       r = 0; 
      }
      break;
    case 1:
      x+=xStep;
      g = g+1;
      if (g > 255) {
        g = 0;
      rect(10,y,100,100); 
     
      }
      break;
    case 2:
      y-=yStep;
      b = b+1;
      if (b > 255) {
       b = 0; 
        
      }
      break;
    case 3:
      y+=yStep;
      break;
    default:
      break;
      
    
    }
    
    //void col() {
    
      
      
    //}
  }
}