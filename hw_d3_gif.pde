import gifAnimation.*;

Gif myAnimation;
//PImage mindy;
PFont font;
PImage cry;

void setup () {
  size(500,500);
  background(255,0,75);
  myAnimation = new Gif(this, "kelly-kapoor.gif");
  myAnimation.play();
  //mindy = loadImage("kelly-kapoor.gif");
  cry = loadImage("cry.png");
  font = loadFont("GillSans-SemiBold-24.vlw");
}

void draw () {
 float diffX = abs(mouseX-pmouseX);
 float diffY = abs(mouseY-pmouseY);
 float diff = diffX + diffY;
  
 
 if (diff > 200) {
    diff = 0;
  }
  
 
 image(cry, mouseX, mouseY, diff, diff);
  
 imageMode(CENTER);
 //image(mindy, width/2, height/2);
image(myAnimation, width/2, height/2);
  fill(0);
  textFont(font, 24);
  text("NOPE!", width/2, height/2 + 100);
}


