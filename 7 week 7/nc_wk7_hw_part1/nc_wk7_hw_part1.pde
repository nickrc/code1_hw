int IMG_NUM = 10;
PImage[] pusheen = new PImage[IMG_NUM];

float a = 0.0;
float inc = TWO_PI/10.2;

float[] star = new float[6];

void setup() {
  size(1000,500);
  imageMode(CENTER);
  ellipseMode(CENTER);
  for (int i = 0; i < pusheen.length; i++) {
    pusheen[i] = loadImage("pusheen"+i+".jpg");    
  }
  
  //for ( int j = 0; j < star.length; j++){
    
  //}
  
}

void draw() {
  
  
  background(255);
  for (int i = 0; i < pusheen.length; i++) {
    //dist(mouseX,mouseY,i,IMG_NUM);
    
    
     image(pusheen[i],50+i*100,100+sin(a)*40.0,100,100);
     a = a + inc;
     
    
    // println(dist(mouseX,mouseY,i,width));
  }
  
   for ( int j = 1; j < star.length; j++){
     noStroke();
     fill(120,23,200);
     ellipse(star[j],j*40+250,30,30);
    
  }
  
  for (int j = 1; j < star.length; j++) {
   if (star[j] < width) {
     star[j] += j;
   } else {
     star[j] = 0;
  }
  } 
}