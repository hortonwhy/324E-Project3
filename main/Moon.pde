class Moon extends CelestialBody {
  color c_body_color;
  
  Moon() {
    super();
  }
  
  Moon(float x, float y, float radius){
    position = new PVector (x, y);
    velocity = new PVector (0, 0);
    this.radius = radius;
    this.c_body_color = color(100, 100, 100);
  }
  
  void display() {
    stroke(c_body_color);
    fill(c_body_color);
    ellipseMode(CENTER);
    ellipse(position.x, position.y, radius, radius);
  }
}
