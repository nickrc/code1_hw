class ParticleSystem {
  float x; 
  float y;
  ArrayList<Particle> p;

  ParticleSystem(float _x, float _y) {
    p = new ArrayList<Particle>();
    x = _x;
    y = _y;
  }

  void update() {
    Particle b = new Particle(x, y);
    p.add(b);

    for (int i = 0;  i < p.size(); i++) {
      Particle temp = p.get(i);
      temp.update();
      temp.display();
      if (temp.life > 50) {
        p.remove(i);
      }
    }
  }
}