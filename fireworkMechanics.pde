

void setup() {
  size(700, 700);
  background(255, 255, 255);
}

boolean first = true;
float distance = random(20000, 100000);
float x = 200;
float y = 699;
float xI = 1;
float yI = 5;
float xII = 1.01;
float yII = 0.99;
int c;

float distance2 = random(20000, 100000);
float x2 = 500;
float y2 = 699;
float xI2 = 1;
float yI2 = 5;
float xII2 = 1.01;
float yII2 = 0.99;
int c2;

void draw() {

  //Left firework
  noStroke();
  fill(255, 0, 0);
  if (c < 40) {
    ellipse(x, y, 5, 5);
  }
  x -= xI;
  xI *= xII;
  y -= yI;
  yI *= yII;

  if (pow((x-200), 2) + pow((y-699), 2) >= distance) {
    yI = 0;
    xI = 0;
    if (c < 40) {
      fill(random(100, 255), random(100, 255), random(100, 255));
      ellipse(x, y, 100, 100);
      c += 1;
    }
  }
  if (c == 40 && first) {
    background(255, 255, 255);
    first = false;
  }
  if (c >= 40) {



    //Right firework
    noStroke();
    fill(0, 0, 255);
    ellipse(x2, y2, 5, 5);
    x2 += xI2;
    xI2 *= xII2;
    y2 -= yI2;
    yI2 *= yII2;

    if (pow((x2-500), 2) + pow((y2-699), 2) >= distance2) {
      yI2 = 0;
      xI2 = 0;
      if (c2 < 40) {
        fill(random(100, 255), random(100, 255), random(100, 255));
        ellipse(x2, y2, 100, 100);
      } 

      c2 += 1;
      if (c2 >= 40) {
        background(255, 255, 255);
        c = 0;
        x = 200;
        y = 699;
        xI = 1;
        yI = 5;
        c2 = 0;
        x2 = 500;
        y2 = 699;
        xI2 = 1;
        yI2 = 5;
        first = true;
        distance = random(50000, 110000);
        distance2 = random(50000, 110000);
        xII = random(1.001, 1.01);
        yII = random(0.990, 0.995);
        xII2 = random(1.001, 1.01);
        yII2 = random(0.99, 0.999);
        
      }
    }
  }
  
}