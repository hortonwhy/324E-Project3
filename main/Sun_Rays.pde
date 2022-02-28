class SunRays extends SolarSystem {
  color ray_color;
  PVector position, velocity;
  float triangle_height, offset, sun_radius;
  
  SunRays() {
    super();
  }
  
  SunRays(float x, float y, float offset, float sun_radius, color ray_color){
    position = new PVector (x, y);
    velocity = new PVector (0, 0);
    this.offset = offset;
    this.ray_color = ray_color;
    this.sun_radius = sun_radius;
  }
  
  void display() {
    stroke(c_body_color);
    fill(c_body_color);
    triangle(position.x - offset, position.y + offset - sun_radius, position.x, position.y - offset - sun_radius, position.x + offset, position.y + offset - sun_radius);
  }
}
