// Colors
color blue = color(0, 0, 255);
color skyblue = color(135, 206, 255);
color gray = color (100, 100, 100);
color green = color (0, 200, 0);
color white = color(255);
color yellow = color(255, 230, 0);
color orange = color(255, 127, 0);
color red = color(255, 0, 0);

// Solar System Parts
CelestialBody cb1;
Moon moon;
Sun sun;
Stars stars;
SolarSystem solarSystem;

void setup() {
  size (500, 500);
  
  // Create Solar System Parts
  cb1 = new CelestialBody(200, 200, 20, blue);
  moon = new Moon(200, 100, 30);
  sun = new Sun(300, 100, 50);
  stars = new Stars(200, 100, 5, white, 10, 1);
  solarSystem = new SolarSystem(width/2, height/2, 100, gray, 100, 1);
}

void draw() {
  drawBackground();
  
  // Celestial Body 1 
  //cb1.display();
  
  // Moon
  moon.display();
  
  // Sun
  sun.display();
  
  // Solar System
  solarSystem.setMoon(moon);
  solarSystem.setSun(sun);
  solarSystem.display();
  solarSystem.move();
  
  // Stars
  stars.display();
  stars.setCenter(moon.getPosition());
  stars.move();
  
  drawForeground();
}

void drawBackground(){
  
  // Sky
  noStroke();
  fill(skyblue);
  rect(0, 0, width, height);
}

void drawForeground(){
  
  // Grass
  noStroke();
  fill(green);
  rect(0, width/2, width, height);
}
