float rotAngle = 45;

void setup() {

  size(600, 600);
  rectMode(CENTER);
  noStroke();
  background(0, 0, 100);
}

void draw() {
  
  pushMatrix();
  
  //if (rotAngle > 90);
  
  //fill(0,255,0);
  
//  if (   );
  
  
  
  

  pushMatrix();
  
  fill(0, 0, 200);
  translate(width/2, height/2);
  rotate(radians(rotAngle));
  rect(0, 0, 50, 50);
  
  

  rotAngle+=1;

  pushMatrix();

  fill(0, 0, 150);
  translate(100, 0);
  rotate(radians(rotAngle*2));
  rect(0, 0, 25, 25);
    drawEllipse();
    
   

  popMatrix();

  pushMatrix();
 fill(255,255,50);
 translate(-100,0);
 rotate(radians(rotAngle*2));
 rect(0, 0, 25, 25);
  drawEllipse();
  
 
  
  
  
  

  popMatrix();

  popMatrix();
  
  popMatrix();
  
  
  
}
  
  void drawEllipse() {
    fill(0,0,250);
    ellipse(100,100,25,25);
    noStroke();
  
}