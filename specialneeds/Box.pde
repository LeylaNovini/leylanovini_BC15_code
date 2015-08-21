// Box Class
class Box {
  String special;
  int num;
  PVector pos;
  float boxSize;
  float tempBox;
  float opacity;
  float text0;
  float distance;
  float r, g, b;

  Box(String _special, int _num) {
    special = _special;
    num = _num;
    pos = new PVector(random(250, 300), random(250, 300));
    float radius = sqrt(num/PI)/2 - 2*sin(pos.x);
    boxSize = radius*myScale;
    r = random(0,255);
    g = random(0,255);
    b = random(0,255);
  }

  void display() {
    update();

    boolean isHovering;
    float distance = dist(mouseX, mouseY, pos.x, pos.y);
    if (distance < boxSize/2) {
      isHovering = true;
    } else {
      isHovering = false;
    }

    if (isHovering) {
      text0 = 100;
    } else {
      text0 = 0;
    }
    rectMode(CENTER);
    noStroke();
    fill(r,g,b);
    rect(pos.x, pos.y, tempBox, tempBox);
    println(tempBox);
    fill(0, text0);
    textAlign(CENTER, CENTER);
    text(special, pos.x, pos.y);
    //text(num, pos.x/2, pos.y/2);
  }

  void update() {
    if (tempBox < boxSize) {
      tempBox += 4.0;
    }

    for (Box otherBox : myBoxes) {
      distance = dist(pos.x, pos.y, otherBox.pos.x, otherBox.pos.y);

      if (distance < (tempBox + otherBox.boxSize)/2) {
        PVector escape = new PVector(pos.x-otherBox.pos.x, pos.y-otherBox.pos.y);
//        println(escape);
        escape.normalize();
        pos.x = pos.x + escape.x;
        pos.y = pos.y + escape.y;
      }
    }
  }
}

