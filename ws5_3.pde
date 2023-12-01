int numRects = 20;
float[][] rects = new float[numRects][4];
float[] velocity = new float[numRects];

void setup() {
  size(800, 600);

  float speed = 3; 
  for (int i = 0; i < numRects; i++) {
    rects[i][0] = random(width-50); 
    rects[i][1] = random(height-50); 
    rects[i][2] = 50;
    rects[i][3] = 50; 
    velocity[i] = speed;
  }
}

void draw() {
  background(0);

  for (int i = 0; i < numRects; i++) {
    
    rects[i][0] += velocity[i];

    
    if (rects[i][0] <= 0 || rects[i][0] + rects[i][2] >= width) {
      velocity[i] *= -1;
    }

    fill(255);
    rect(rects[i][0], rects[i][1], rects[i][2], rects[i][3]);
  }
}
