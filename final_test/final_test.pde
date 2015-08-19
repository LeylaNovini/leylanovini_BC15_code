Puzzle[] myPuzzles;
int myScale;

void setup() {
  size(200, 200);
  myScale = 20;
  myPuzzles = new Puzzle[13];

  String[] originalData = loadStrings("kimonoData.csv");
  splitData(originalData);
}

void splitData(String[] myArray) {
  for (int i=0; i<myArray.length; i++) {
    //break into rows
    String myRow = myArray[i];
    //break into columns
    String[] columns = split(myRow, ",");
    //println(columns[1]);

    String[] tempSpecial = split(columns[0], "\"");
    String special = trim(tempSpecial[1]);
    // println(tempSpecial[1]);

    String[] tempNum = split(columns[1], "\"");
    int num = parseInt(trim(tempNum[1]));
    println(special, num);

    myPuzzles[i] = new Puzzle(special, num);
    
    
  }
}

void draw() {
  background(255);
  //  pieChart(500, angles);
  for (Puzzle p : myPuzzles){
     fill(0);
     p.display();
  }
}

void pieChart(float diameter, String[] data) {
  float lastAngle = 0;
  for (int i = 0; i < data.length; i++) {
    float gray = map(i, 0, data.length, 0, 255);
    fill(gray);
    arc(width/2, height/2, diameter, diameter, lastAngle, lastAngle+radians(angles[i]));
    lastAngle += radians(angles[i]);
  }
}

