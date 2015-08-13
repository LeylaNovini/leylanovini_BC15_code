int num = 10;

PImage[] mozart = new PImage[num];
PImage[] = pos = new PVector[num];
PImage[] = speed = new PVector[num];

Boolean[] movingMozart = new Boolean[num];
float gravity;


void setup() {
  size(600,600);
  //mozart = loadImage("mozart.png")
  
  for (int i=0; i<num; i++) {
    pos[i] = new PImage(random(width), random(height-200));
    speed[i] = new PImage(0,0);
    movingMozart[i] = false;
    mozart[i] = loadImage("mozart" + i + ".png");
}

  gravity = 0.1;
}

void draw() {
    background(255);
    for (int i=0; i<num; i++) {
    float distance = dist(mouseX, mouseY, pos[i].x, pos[i].y);
//    println(distance);
    }
    noStroke();
    //check distance to mouse
    if(distance < mozart[i]/2 && !isMoving[i]) {
      fill(hue[i], 100, 50);
      movingMozart[i] = true;
      speed[i].x = mouseX - pmouseX;
    } else {
      movingMozart[i] = false;
    }
      
      if(pos[i].y > height - mozart[i]/2); {
        pos[i].y = height - mozart[i]/2;
        speed[i].y *= -0.8;
        
       if(abs(speed[i].y) < 3) {
          speed[i].y = 0;
        }
      }
} //end of draw

void keyPressed() {
  if (key == ' ') {
    for (int i=0; i<num; i++) {
      pos[i] = new PImage(random(width), random(height-200));
      speed[i] = new PImage(0,0);
      movingMozart[i] = false;
    }
  }
}

