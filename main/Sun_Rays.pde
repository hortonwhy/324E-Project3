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
    stroke(yellow);
    fill(yellow);
    
    // Left Triangle
    triangle(position.x - offset - radius*4.5, position.y, position.x - radius*3.5, position.y - offset, position.x - radius*3.5, position.y + offset);
    
    // Right Triangle
    triangle(position.x + offset + radius*4.5, position.y, position.x + radius*3.5, position.y - offset, position.x + radius*3.5, position.y + offset);
    
    // Top Triangle
    triangle(position.x - offset, position.y + offset - sun_radius, position.x, position.y - offset - sun_radius, position.x + offset, position.y + offset - sun_radius);
    
    // Bottom Triangle
    triangle(position.x - offset, position.y - offset + sun_radius, position.x, position.y + offset + sun_radius, position.x + offset, position.y - offset + sun_radius);
  }
}
