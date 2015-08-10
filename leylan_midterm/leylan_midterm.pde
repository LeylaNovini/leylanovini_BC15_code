PImage mercury;
PImage mars;
PImage venus;
PImage jupiter;
PImage saturn;
PImage uranus;
PImage neptune;
PImage sun;

float r = 130;
float r2 = 175;
float r3 = 200;
float r4 = 225;
float r5 = 250;
float r6 = 275;
float r7 = 300;

float theta = 0;
float speed = 0.01;

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
  float x = r * cos(theta);
  float y = r * sin(theta);

  float x2 = r2 * cos(theta);
  float y2 = r2 * sin(theta);
  
  float x3 = r3 * cos(theta);
  float y3 = r3 * sin(theta);
  
  float x4 = r4 * cos(theta);
  float y4 = r4 * sin(theta);
  
  float x5 = r5 * cos(theta);
  float y5 = r5 * sin(theta);
  
  float x6 = r6 * cos(theta);
  float y6 = r6 * sin(theta);
  
  float x7 = r7 * cos(theta);
  float y7 = r7 * sin(theta);
  
  imageMode(CENTER);
  image(sun, width/2, height/2);
  image(mercury, x+355, y+355);
  image(venus, x2+355, y2+355);
  image(mars, x3+355, y3+355);
  image(jupiter, x4+355, y4+355);
  image(saturn, x5+355, y5+355);
  image(uranus, x6+355, y6+355);
  image(neptune, x7+355, y7+355);
  
  theta += 0.01;
}
