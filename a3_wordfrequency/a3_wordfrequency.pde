void setup() {
  size(300, 300);
  int[][] dict = createDictionary(readFile("../wordlist.txt"));
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
  int range_max = 0;
  for (int i = 0; i < dict.length; i++) {
    if (dict[i][1] > range_max) {
      range_max = dict[i][1];
    }

  }
  println(range_max);
}




void draw() {
}
