//float value = 25;

float x;
int rx = round(x);

void setup() {
  size(800,800);
  
  
}


void draw(){
  
  // 1 dist
  // calculates distance of specified points and returns a float
  //noStroke();
  //float d = dist(width/2, height/2, mouseX, mouseY);
  //float maxDist = dist(0, 0, width/2, height/2);
  //float gray = map(d, 0, maxDist, 0, 255);
  //fill(gray);
  //rect(0,0,width,height);
  
  // 2 random
  // chooses a value randomly inbetween 2 specified values 
  //for(int i = 0; i < 100; i++) {
  // float r = random(50);
  // stroke(r*5);
  // line(50,i,50+r,i);
  //}
  
   // 3 radians
   //converts a degree measurment into radians and returns a float 
   //float deg = 45.0;
   //float rad = radians(deg);
   //println(deg + "degrees is" + rad + "radians");
   
   // 4 map
   //tracks a changing variable to a corresponding distance between two separate variables
   //float m = map(value,0,100,0,width);
   //ellipse(m,200,10,10);
   
   // 5 round
   // rounds a specified value up to the neareast whole number
   float x = 9.2;
   int rx = round(x);
   println(rx);
   

 
  
  
}