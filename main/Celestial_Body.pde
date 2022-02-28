class CelestialBody {
  float radius;
  PVector position;
  PVector velocity;
  color c_body_color;
  color black = color(0);
  
  CelestialBody() {
    velocity = new PVector(0,0);
    position = new PVector(100, 100);
    radius = 50;
    c_body_color = black;
  }
  
  CelestialBody(float x, float y, float radius, color c_body_color){
    position = new PVector (x, y);
    velocity = new PVector (0, 0);
    this.radius = radius;
    this.c_body_color = c_body_color;
  }
  
  void spotColor(color c_body_color){
    this.c_body_color = c_body_color;
  }
  
  void display() {
    fill(c_body_color);
    stroke(c_body_color);
    ellipseMode(CENTER);
    ellipse(position.x, position.y, radius, radius);
  }
  
  void setVelocity(float x, float y){
    velocity.x = x;
    velocity.y = y;
  }
  
  void setPosition(float x, float y){
    position.x = x;
    position.y = y;
  }
  
  public PVector getPosition() {
    return position;
  }
  
  void move() {
    position.x += velocity.x;
    position.y += velocity.y;
  }
}
