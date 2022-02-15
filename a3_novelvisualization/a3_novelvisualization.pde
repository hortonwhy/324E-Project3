String[] lines = loadStrings("allwords.txt");
PFont mainFont;
int line_ypos;
int fontsize;
float lineWidth;

void setup() {
  
  // Line setup
  lineWidth = 0;
  
  // Canvas setup
  background(0);
  size(700,600);
  
  // Font setup
  fontsize = 36;
  stroke(255);
  fill(0);
  textSize(fontsize);
  
  mainFont = createFont("Courier", fontsize, true);
}

void draw () {
  background(0);
  
  textFont(mainFont);
  //text(lines[0], 0, 0);
  
  //if (textWidth(lines[0]) > width) {
  //   lines[0] += "/n";
  //}
}
