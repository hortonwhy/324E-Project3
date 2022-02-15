String[] lines;
color text_color;
PFont mainFont;
float line_ypos, line_xpos, word_length;
float font_size;
float lineWidth;

void setup() {
  
  // Line setup
  lines = loadStrings("/Users/lori/Creative Cloud Files/CollegeWork/CS324E/324E-Project3/allwords.txt");
  lineWidth = 0;
  
  // Canvas setup
  background(0);
  size(700,600);
  
  // Font setup
  font_size = 36;
  stroke(255);
  fill(0);
  textSize(font_size);
  mainFont = createFont("Courier", font_size, true);
}

void draw () {
  
  // Resets canvas and variables
  background(0);
  line_ypos = 36;
  line_xpos = 0;
  
  fill(255);
  textFont(mainFont);
  
  // Writes text
  for (int i = 0; i < lines.length; ++i) {
    
    word_length = textWidth(lines[i]);
    
    // Makes sure words don't go off page
    if (line_xpos + textWidth(lines[i]) > width) {
     line_ypos += font_size;
     line_xpos = 0;
    }
    
    // Determines text color
    myTextColor(lines[i]);
    fill(text_color);
    
    // Writes text
    text(lines[i], line_xpos, line_ypos);
    
    // Changes x position by word length and gives some space
    line_xpos += word_length + 20;   
  }
}

void myTextColor (String current_word){
  text_color = color(0);
}
