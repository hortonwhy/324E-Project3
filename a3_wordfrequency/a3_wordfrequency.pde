void setup() {
  size(700, 600);
  int[][] dict = createDictionary(readFile("../wordfrequency.txt"));
  drawBars(dict);
}

// get string array
String[] readFile(String file) {
  String[] lines = loadStrings(file);
  return lines;
}

//make dictionary pair of values
int[][] createDictionary (String[] lines) {
  int[][] dict = new int[lines.length][2];
  for (int i = 0; i < lines.length; i++) {
    // form is: 1: 7000
    String[] list = lines[i].split(":");

    String a = list[0].trim();
    String b = list[1].trim();
    dict[i][0] = int(a);
    dict[i][1] = int(b);
  }
  printArray(dict[0]);
  return dict;
}

void drawBars(int[][] dict) {
  // first find max range
  float rect_width = width*0.8 / dict.length;
  float range_max = 0.0;
  for (int i = 0; i < dict.length; i++) {
    if (dict[i][1] > range_max) {
      range_max = dict[i][1];
    }
  }

  // now determine sizes of each rectangal
  float[] rect_height = new float[dict.length];
  for (int i = 0; i < dict.length; i++) {
    println(dict[i][1] / range_max);
    rect_height[i]  = (dict[i][1] / range_max) * (height*0.8);
  }


  //draw each rectange in descending order
  for (int i = 0; i < dict.length; i++) {
    rect(i*rect_width, rect_width/4, rect_width, rect_height[i]);
    
    text(str(dict[i][0]) + ":" +  str(dict[i][1]), rect_width + rect_width*i + 4, rect_height[i] + 5);
  }


}




void draw() {
}
