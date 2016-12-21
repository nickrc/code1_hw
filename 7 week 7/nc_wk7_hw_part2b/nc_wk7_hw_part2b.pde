PImage img;


void setup(){
  size(800,800);
  img = loadImage("helenm2.jpg");
  //stroke(255);
  noStroke();
}




void draw() {
  background(255);
  
  int widthStep = 6;
  int heightStep = 6;
  
  for (int i = 0; i <= height; i += heightStep) {
   for (int j = 0; j <= width; j += widthStep) {
    
     color c = img.get(j,i);
     
     float r = red(c);
     float g = green(c);
     float b = blue(c);
     
     
    
     //float brightness = (r+g+b)/3;
     
     //float offset = map(brightness,0,255,5,0);
     
     //fill(map(brightness,0,255,150,255));
     //fill(map(brightness,0,255,0,80));
     
     float filter = 255 - r;
     
     // if (brightness > 80) {
     //point(j,i+offset);
     //fill(0,125,150);
     //tint(0,153,153);
      fill(filter);
     rect(j, i,4,4);
     
     //if ( g > b && g > r) {
      
     //  map(filter,0,255,0,100);
     //  rect(j, i,4,4);
       
     //}
      
     
     
    //  }
   }
   
    
  }
}