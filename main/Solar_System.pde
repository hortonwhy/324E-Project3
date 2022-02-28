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
    cb1 = new CelestialBody(x-radius, y-radius, radius, color(255));
    cb2 = new CelestialBody(x+radius, y+radius, radius, color(0));
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
  
  void setCenter(PVector new_position){
    center.x = new_position.x;
    center.y = new_position.y;
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
    PVector new_center1, new_center2;
    
    center.x += velocity.x;
    center.y += velocity.y;
    
    new_center1 = new PVector (center.x-radius*speed*sin(angle), center.y-radius*speed*(cos(angle)));
    new_center2 = new PVector (center.x+radius*speed*sin(angle), center.y+radius*speed*(cos(angle)));
    
    cb1.setPosition(new_center1);
    cb2.setPosition(new_center2);
    angle += .1;
  }
}
