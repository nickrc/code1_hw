int IMG_NUM = 5;

PImage[] arrow = new PImage[IMG_NUM];
PImage[] arrowcopy = new PImage[IMG_NUM];

//float[] dy = new float[IMG_NUM];

//Arrow[] arrows = new Arrow[4]




void setup() {
  size(800,800);
  imageMode(CENTER);
  
 //arrows[0] = new Arrow(50);
 //arrows = new Arrow(50); 
  
  for ( int i = 1; i < arrow.length; i++) {
   arrow[i] = loadImage("arrow"+i+".png"); 
  }
  for ( int i = 1; i < arrow.length; i++) {
   arrowcopy[i] = loadImage("arrow"+i+".png"); 
   
  // dy[i] += i * 2;
  }
  
}


void draw() {
  background(255);
  
  for ( int i = 1; i < arrow.length; i++) {
    tint(255,255);
    image(arrow[i], 50+i*100,100,100,100);
  }
  for ( int i = 1; i < arrow.length; i++) {
    tint(255,126);
    image(arrowcopy[i], 50+i*100,i*100+100,100,100);
    
    //a1.descend();
    //a1.display();
    //a1.bottom();
    
    //a2.descend();
    //a2.display();
    //a2.bottom();
    
    //a3.descend();
    //a3.display();
    //a3.bottom();
    
    //a4.descend();
    //a4.display();
    //a4.bottom();
    
    
    
    
    
  }
  
  
  
}