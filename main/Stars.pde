class Stars extends SolarSystem {
  CelestialBody cb1;
  CelestialBody cb2;
  PVector center, velocity;
  float angle, radius, distance;
  color star_color;
  
  Stars() {
    super();
  }
  
  Stars(float x, float y, float radius, color star_color, float distance, float speed){
    super(x, y, radius, star_color, distance, speed);
    center = new PVector (x, y);
    velocity = new PVector (0, 0);
    cb1 = new CelestialBody(x-radius-distance, y-radius-distance, radius, star_color);
    cb2 = new CelestialBody(x+radius+distance, y+radius+distance, radius, star_color);
  }
  
  void display() {
    cb1.display();
    cb2.display();
  }
}
