import java.util.Random;
Random generator;

void setup() {
 size(640,360);
 background(0);
 generator = new Random();
}

void draw() {
  float num = (float) generator.nextGaussian(); 
  float sd = 60; // Standart deviation
  float mean = 320; // mean
  float x = sd * num + mean;
  noStroke();
  fill(255,10);
  ellipse(x,180,16,16);
}
