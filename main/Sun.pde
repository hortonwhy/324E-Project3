class Sun extends CelestialBody {
  SunRays sunRay1;
  color c_body_color;
  
  Sun() {
    super();
  }
  
  Sun(float x, float y, float radius){
    position = new PVector (x, y);
    velocity = new PVector (0, 0);
    this.radius = radius;
    this.c_body_color = sunColor(radius);
  }
  
  void display() {
    stroke(c_body_color);
    fill(c_body_color);
    ellipseMode(CENTER);
    ellipse(position.x, position.y, radius, radius);
    
    sunRay1 = new SunRays(position.x, position.y, radius/4, radius, c_body_color);
    sunRay1.display();
    
    //sunRays.setPosition(center.x-radius*sin(angle), center.y-radius*(cos(angle)));
  }

  public color sunColor (float radius) {
    if (radius < 50){
      return white;
      
    } else if (radius < 100) {
      return yellow;
      
    } else if (radius < 150) {
      return orange;
      
    } else if (radius < 200) {
      return red;
    } else {
      return color(0);
    }
  }
}
