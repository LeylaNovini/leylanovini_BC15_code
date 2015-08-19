class Puzzle {
  String special;
  int num;
  float diameter;
  float lastAngle;
  PVector pos;
  float puzzleSize;
  float tempPuzzle;
  float oppacity;
  float text0;

  Puzzle(String _special, int _num) {
    special = _special;
    num = _num;
    lastAngle = 0;
//    pos = new PVector(random(300, 400), random(300, 400));
  }

  void display() {
//    update();
//
    noStroke();
    arc(width/2, height/2, diameter, diameter, lastAngle, lastAngle+radians(num));
    lastAngle += radians(num);
//
//    fill(0, text0);
//    textAlign(CENTER);
//    text(special, pos.x, pos.y);
//    text(num, pos.x/2, pos.y/2);
  }

  void update() {
//    if (tempPuzzle < puzzleSize) {
//      tempPuzzle += 5.0;
//    } 
//
//    for (Puzzle otherPuzzle : myPuzzles) {
//      float distance = dist(pos.x, pos.y, otherPuzzle.pos.x, otherPuzzle.pos.y);
//      stroke(255);
//      line(pos.x, pos.y, otherPuzzle.pos.x, otherPuzzle.pos.y);
//      if (distance < (tempPuzzle + otherPuzzle.puzzleSize)/2) {
//        PVector escape = new PVector(pos.x-otherPuzzle.pos.x, pos.y-otherPuzzle.pos.y);
//        escape.normalize();
//        pos.x = pos.x + escape.x;
//        pos.y = pos.y + escape.y;
//      }
//    }
  }
}

