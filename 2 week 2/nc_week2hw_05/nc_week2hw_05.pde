float rotAngle = 45;

void setup() { 
  
  size(800,800);
  
  
}

void draw() {
  
  pushMatrix();
  
  translate(width/2,height/2); 
  rectMode(CENTER);
  rect(0,0,100,100);
  
  rotate(radians(rotAngle));
  
  rotAngle+=1;
  
  pushMatrix();
  
  translate(200,0);
  rect(0,0,100,100);
  
  rotate(radians(rotAngle*3));
  rect(100,-100,50,50);
  
  
  popMatrix();
  
  pushMatrix();
  
  translate(-200,0);
  rect(0,0,100,100);
  
  rotate(radians(rotAngle*3));
  rect(-100,100,50,50);
  
  popMatrix();
  
  
  
  popMatrix();
  
}