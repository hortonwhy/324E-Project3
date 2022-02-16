String[] lines;
String written_text = "";
color text_color, black, red, orange, yellow, green, blue;
PFont main_font;
float line_ypos, line_xpos, word_length;
int font_size, random_int;

void setup() {
  
  // Line setup
  lines = loadStrings("../uniquewords.txt");
  
  // Canvas setup
  background(0);
  size(700,600);
  
  // Font setup
  font_size = 24;
  stroke(255);
  fill(0);
  textSize(font_size);
  main_font = createFont("Courier", font_size, true);
  
  // Line setup
  line_xpos = font_size*.8;
  line_ypos = font_size*.8;
  
  // Color setup
  black = color(255);
  red = color(255, 0, 0);
  orange = color(250, 150, 0);
  yellow = color(250, 250, 0);
  green = color(0, 255, 0);
  blue = color(0, 0, 255);
}

void draw () {
  
  // Resets canvas and variables
  background(0);
  println(written_text);
  
  // Writes text
  for (boolean i = false; i == false;) {
    
    random_int = int(random(lines.length));
    word_length = textWidth(lines[random_int]);
    
    // Makes sure words don't go off page
    if (line_xpos + textWidth(lines[random_int]) > width) {
     line_ypos += font_size;
     line_xpos = font_size*.8;
    }
    
    // Makes sure words don't go off page
    if (line_ypos > height) {
      noLoop();
      break;
    }
    
    // Determines text color & font
    myTextColor(lines[random_int]);
    fill(text_color);
    textFont(main_font);
    
    // Writes text
    written_text += lines[random_int] + " "; // Used to check all words used
    text(lines[random_int], line_xpos, line_ypos);
    
    // Changes x position by word length and gives some space
    line_xpos += word_length + font_size*.8;   
  }
}

void myTextColor (String current_word){
  
  if (current_word.indexOf("a") >= 0){
    text_color = red;
    
  } else if (current_word.indexOf("e") >= 0) {
    text_color = orange;
    
  } else if (current_word.indexOf("i") >= 0){
    text_color = yellow;
  
  } else if (current_word.indexOf("o") >= 0){
    text_color = green;
    
  } else if (current_word.indexOf("u") >= 0){
    text_color = blue;
    
  } else {
    text_color = black;
  }
}
