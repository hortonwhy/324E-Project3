class SolarSystem {
  CelestialBody cb1;
  CelestialBody cb2;
  PVector center, velocity;
  float angle, radius, distance, speed;
  color c_body_color;
  
  SolarSystem () {
    center = new PVector (width/2, height/2);
    velocity = new PVector (0, 0);
    angle = 0;
    radius = 10; 
    distance = 10;
    c_body_color = color(255);
    speed = 1;
  }
  
  SolarSystem(float x, float y, float radius, color c_body_color, float distance, float speed){
    center = new PVector (x, y);
    velocity = new PVector (0, 0);
    cb1 = new CelestialBody(x-radius-distance, y-radius-distance, radius, color(255));
    cb2 = new CelestialBody(x+radius+distance, y+radius+distance, radius, color(0));
    this.radius = radius;
    this.speed = speed;
    this.distance = distance;
    this.c_body_color = c_body_color;
  }
  
  void display() {
    cb1.display();
    cb2.display();
  }
  
  void setVelocity(float x, float y){
    velocity.x = x;
    velocity.y = y;
  }
  
  void setCenter(float x, float y){
    center.x = x;
    center.y = y;
  }
  
  void setMoon(Moon moon) {
    cb1 = moon;
  }
  
  void setSun(Sun sun) {
    cb2 = sun;
  }
  
  public PVector getPositionCB1(){
    return cb1.getPosition();
  }
  
  public PVector getPositionCB2(){
    return cb2.getPosition();
  }
  
  void move() {
    center.x += velocity.x;
    center.y += velocity.y;
    cb1.setPosition(center.x-radius*speed*sin(angle), center.y-radius*speed*(cos(angle)));
    cb2.setPosition(center.x+radius*speed*sin(angle), center.y+radius*speed*(cos(angle)));
    angle += .1;
  }
}
