ArrayList<ParticleSystem> systems = new ArrayList<ParticleSystem>();

float m;
float n;

void setup() {
  size(800, 800);
  
  
}

void draw() {
  background(255);
  
  m = random(100,700);
  n = random(100,700);
  
  for (int i = 0; i < systems.size(); i++) {
    ParticleSystem t = systems.get(i);
    t.update();
  }
  
  //for (int i = 0; i < systems.size(); i++) {
  //  for (int j = 0; j < systems.size(); j++) {
      
      
    
  //  systems.add(new ParticleSystem(i,j));
    
  //  }
  //}
  
  
} 

void mousePressed() {
  systems.add(new ParticleSystem(m,n));
}