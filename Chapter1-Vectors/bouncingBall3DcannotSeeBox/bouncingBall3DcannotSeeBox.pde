import peasy.*;
PVector velocity;
PVector location;
int ballSize = 16;
PeasyCam cam;
//PGraphics pg;

class PVector {
 float x;
 float y;
 float z;
 
 PVector(float x_, float y_, float z_) {
  x = x_;
  y = y_;
  z = z_;
 }
 
 void add (PVector v) {
  x = x + v.x;
  y = y + v.y;
  z = z + v.z;
 }
}

void setup(){
 size(640, 640, P3D);
 location = new PVector(100, 100, 100);
 velocity = new PVector(2.5, 5, 5);
 cam = new PeasyCam(this, 400);
 /*pg = createGraphics(640, 640, P3D);
 pg.beginDraw();
 translate(320, 320, 320);
 noFill();
 box(640);
 pg.endDraw();
 image(pg, 50, 50);*/
}

void draw(){
 background(255);
 location.add(velocity);
 if ((location.x > width) || (location.x < 0)){
   velocity.x = velocity.x * -1; 
 }
 if ((location.y > height) || (location.y < 0)){
   velocity.y = velocity.y * -1; 
 }
 if ((location.z > height) || (location.z < 0)){
   velocity.z = velocity.z * -1; 
 }
 stroke(0);
 translate(location.x, location.y, location.z);
 sphere(16);
}
