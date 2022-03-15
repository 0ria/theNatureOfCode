import java.util.Random;
Random generator;
Walker w;

class Walker {
 float x;
 float y;
  
 Walker(){
   x = width/2;
   y = height/2;
 }
 
 void display(){
  stroke(0);
  point(x,y);
 }
 
 void step(){
   float num = (float) generator.nextGaussian();
   float stepx = num;
   num = (float) generator.nextGaussian();
   float stepy = num;
   x += stepx;
   y += stepy;
 }
}

void setup(){
 size(640, 360);
 w = new Walker();
 generator = new Random();
 background(255);
}

void draw(){
 w.step(); 
 w.display();
}
