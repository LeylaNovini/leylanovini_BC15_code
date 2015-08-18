PImage leyla;
int pixelX, pixelY;

void setup() {
  size(1000,1000);
  leyla = loadImage("leyla.jpg");
  pixelX = 0;
  pixelY = 0;
}

void draw() {
  //image(leyla, 0, 0);
  color myPixelColor = leyla.get(pixelX, pixelY);
  float brightness = brightness(myPixelColor);
  
  fill(myPixelColor);
  noStroke();
  rectMode(CENTER);
  ellipse(pixelX*2, pixelY*2, 5, brightness*0.9);
  
  pixelX += 5;
  
  if(pixelX > leyla.width && pixelY < leyla.height) {
    pixelX = 0;
    pixelY += 5;
    
  }
}


