float circleY[] = new float[50];
float circleSpeed[] = new float[50];

void setup() {

  size(500, 500);


  for (int i = 0; i < circleY.length; i++) {
    circleY[i] = (i*1) * 10;
    circleSpeed[i] = 1;
  }
}

void draw() {
  background(random(0, 255), random(0, 255), random(0, 255));
  for (int i = 0; i < circleY.length; i++) {
    ellipse(i*10+5, circleY[i], 10, 10);
    circleY[i] += circleSpeed[i];
    if (circleY[i] < 0 || circleY[i] > height) {
      circleSpeed[i] *= -1 ;
    }
  }
}
