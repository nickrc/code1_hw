// The Nature of Code
// Daniel Shiffman
// http://natureofcode.com

ArrayList<Mover> moverList = new ArrayList<Mover>();


Mover mover;

void setup() {
  size(800,800);
  mover = new Mover(); 
}

void draw() {
  background(255);
  
  if (mousePressed) {
   
    moverList.add(new Mover());
    
  }
  
  for ( Mover a : moverList){
    a.update();
    a.checkEdges();
    a.display(); 
    
  }
  //if ( 
  
  //mover.update();
  //mover.checkEdges();
  //mover.display(); 
  
  for( int i = moverList.size()-1; i >= 0; i--) {
   Mover a = moverList.get(i);
   a.update();
   a.checkEdges();
   a.display();
   
   if (a.lifetime < 0) {

     
     moverList.remove(i);
   }
     
   }
   
    
  //}
  
}
  