

class picture {
  
  
  PImage img;
  float x;
  float y;
  
  
  
  picture(float x, float y) {
    img = loadImage("katamari1.png");
    x = x * 2;
    y = y * 2;
    
  }
    void update(){

     
      
      
  }
  void display(){
    
    imageMode(CENTER);
    
    image(img,x,y);
    
    
  }
  
  
   void keyPressed() {
        if ( x < width) {
          x = width/2; 
        
         } else {
     
          x = 800;
     
   }
     
        
      }

  
}