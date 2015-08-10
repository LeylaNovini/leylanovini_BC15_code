PImage mercury;
PImage mars;
PImage venus;
PImage jupiter;
PImage saturn;
PImage uranus;
PImage neptune;
PImage sun;



float r = 250;
float theta = 0;

float speed = 0.01;

int endY;
int cell = 10;
float s =0;

void setup() {
  size(700,700);
  smooth();
  mercury = loadImage("mercury.png");
  venus = loadImage("venus.png");
  mars = loadImage("mars.png");
  jupiter = loadImage("jupiter.png");
  saturn = loadImage("saturn.png");
  uranus = loadImage("uranus.png");
  neptune = loadImage("neptune.png");
  sun = loadImage("sun.png");

}


void draw() {
  background(10,10,75);
  fill(0,10);
  rect(0,0,width,height);
  //stars
    ellipseMode(CORNER);
    
    noStroke();
    fill(255);
    for(int j=0; j<height/cell; j++) {
    for(int i=0; i<width/cell; i++) {   
      if(sin(j) - cos(i) + tan(s) >= 0) {
        fill(255);
      } else {
        fill(50);
      }
      ellipse(i*cell, j*cell, 2, 2);  
    }
  }
    s -= 0.05;
  // planets
//  float x = r * cos(frameCount * speed + 50);
//  float y = r * sin(frameCount * speed + 50);
  float x = r * cos(theta);
  float y = r * sin(theta);
  
  imageMode(CENTER);
  image(sun, width/2, height/2);
  image(mercury, x+200, y+200);
  image(venus, x+230, y+230);
  image(mars, x+250, y+250);
  image(jupiter, x+315, y+315);
  image(saturn, x+330, y+330);
  image(uranus, x+360, y+360);
  image(neptune, x+375, y+375);
  
  theta += 0.01;
}

//void keyPressed() {
//  switch(key) {
//    case '1':
//    mode = 1;
//    println("MARS");
//    break;
//    
//    case '2':
//    mode = 2;
//    println("VENUS");
//    break;
//    
//    case '3':
//    mode = 3;
//    println("JUPITER");
//    break;
//  }
//}
