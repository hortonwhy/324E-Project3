String[] lines;
String written_text;
color text_color;
PFont mainFont;
float line_ypos, line_xpos, word_length, line_width;
int font_size, random_int;

void setup() {
  
  // Line setup
  lines = loadStrings("/Users/lori/Creative Cloud Files/CollegeWork/CS324E/324E-Project3/uniquewords.txt");
  line_width = 0;
  
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
  
  fill(255);
  textFont(mainFont);
  
  // Writes text
  for (boolean i = false; i == false;) {
    
    random_int = int(random(lines.length));
    word_length = textWidth(lines[random_int]);
    
    // Makes sure words don't go off page
    if (line_xpos + textWidth(lines[random_int]) > width) {
     line_ypos += font_size;
     line_xpos = 0;
    }
    
    if (line_ypos > height) {
      noLoop();
      break;
    }
    
    // Determines text color
    myTextColor(lines[random_int]);
    fill(text_color);
    
    // Writes text
    written_text += lines[random_int] + " ";
    text(written_text, line_xpos, line_ypos);
    println(random_int + " " + lines[random_int]);
    println(line_xpos + " " + line_ypos + " " + height);
    
    // Changes x position by word length and gives some space
    line_xpos += word_length + 20;   
  }
}

void myTextColor (String current_word){
  text_color = color(0);
}
