//Creates a plot of the logistic function values as the number of iterations approches
//infinity. y = value as it approches infinity, x = value of the coefficient
float x;
float y;
int iterations;
float[] destinations;
int destIndex = 0;
void setup(){
  size(750, 500);
  background(255, 255, 255);
  
  x = 0.1;
  iterations = 1000;
  destinations = new float[102912];
  
  stroke(0, 0, 0);
  strokeWeight(4);
  fill(0, 0, 255);

  //finds a destination value of the logistic function for each a value
  for(float j = 2; j < 4; j += 0.01){
    y = j * x * (1-x);
    //iterates over the logistic function a certain number of times
    for(int i = 0; i < iterations; i++){
      y = j * y * (1-y);
      //adds the last 512 values of the iteration to the logistic function array
      if(i >= (iterations-512)){
        destinations[destIndex] = y;
        destIndex += 1;
      }
    }
  }
  println(destIndex);
  //draws points for the destination values of each a value
  for(int i = 0; i < destinations.length; i++){
    //overlays sets of 512 (because each 512 all come from the same a value) to create the graph
    point(50 + ((width - 50) * float(i/512)/(destinations.length/512)), height - (height * destinations[i]));
  }
  strokeWeight(5);
  stroke(0, 0, 255);
  line(50, 0, 50, height);
  
  //y-axis numbers
  for(float i = 0; i < 10; i++){
    text((i * 10) + "%", 10, height- ( i / 10 * height));
  }
  //x-axis numbers
  for(float i = 0; i <=8 ; i++){
    text(2 + i/4, 50 + (width * i/8), height);
  }
}

void draw(){
  
}