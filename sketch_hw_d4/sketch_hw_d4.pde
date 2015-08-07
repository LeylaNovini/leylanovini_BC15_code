float r = 100;
float speed = 0.05;

void setup() {
  size(500,500);
  background(0,50,255);
  smooth();
}

void draw() {
  fill(0,50,255);
  rect(0,0,width,height);
  
  float x = r * sin(frameCount * speed);
  float y = r * cos(frameCount * speed);
  
  translate(width/2, height/2);
  fill(255,0,0);
  noStroke();
  rect(x, y, 50, 50);
  
  translate(width/3, height/3);
  fill(0,255,0);
  noStroke();
  ellipse(x, y, 100, 100);
}
