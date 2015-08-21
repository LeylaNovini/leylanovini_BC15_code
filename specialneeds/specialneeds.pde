Box[] myBoxes;
int myScale;

void setup() {
  size(700, 700);
  myScale = 20;
  myBoxes = new Box[13];

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

    myBoxes[i] = new Box(special, num);
  }
}

void draw() {
  background(255);
  for (Box b : myBoxes) {
    b.display();
  }
}

