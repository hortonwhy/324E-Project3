class Stars extends SolarSystem {
  CelestialBody cb1;
  CelestialBody cb2;
  PVector center, velocity;
  float angle, radius, distance;
  color c_body_color;
  
  Stars() {
    super();
  }
  
  Stars(float x, float y, float radius, color c_body_color, float distance, float speed){
    super(x, y, radius, c_body_color, distance, speed);
    center = new PVector (x, y);
    velocity = new PVector (0, 0);
    cb1 = new CelestialBody(x-radius-distance, y-radius-distance, radius, color(255));
    cb2 = new CelestialBody(x+radius+distance, y+radius+distance, radius, color(0));
  }
  
  void display() {
    stroke(c_body_color);
    fill(c_body_color);
    ellipseMode(CENTER);
    ellipse(center.x, center.y, radius, radius);
  }
}
