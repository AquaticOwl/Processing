float axesBeginning;
float y;
float yPrime;

String function; 
void setup() {
  size(500, 500);
  background(255, 255, 255);
  axesBeginning = 20;
  
  //Axis Numbers
  fill(0, 0, 0);
  for(int i = 0; i <= 10; i++) {
    text(10 - i, 5, i * 50 - axesBeginning + 5);
    text(i, i * 50 + 16.5, height - 5);
  }
  
  //Axis lines
  line(axesBeginning, height - axesBeginning, axesBeginning, 0);
  line(axesBeginning, height - axesBeginning, width, height - axesBeginning);
  
  //Loop for drawing the math function
  strokeWeight(3);
  for(float x = 0; x < 10; x += 0.01) {
    //Math Function
    y = pow(x - 5, 2) + 1;
    point(axesBeginning + (x * 50), height - (y * 50) - axesBeginning);
  }
  /* Can this ever get an output of 100?
  int test = 10;
  function = "test * test";
  println(int(function)); */
}