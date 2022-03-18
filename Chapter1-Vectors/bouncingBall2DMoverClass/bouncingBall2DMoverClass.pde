int ballSize = 16;
Mover mov;

class Mover{
 PVector location;
 PVector velocity;
 PVector acceleration;
 float topSpeed;
 
 Mover(){
   location = new PVector(random(width), random(height)); 
   velocity = new PVector(0, 0);
   acceleration = new PVector(-0.001, 001);
   topSpeed = 10.0;
 }
 void update(){
   velocity.add(acceleration);
   velocity.limit(topSpeed);
   location.add(velocity);
 }
 
 void display(){
  stroke(0);
  fill(175);
  ellipse(location.x, location.y, ballSize, ballSize);
 }
 
 void checkEdges(){
   if (location.x > width) location.x = 0;
   else if (location.x < 0) location.x = width;
   if (location.y > height) location.y = 0;
   else if (location.y < 0) location.y = height;
 }
}

class PVector {
 float x;
 float y;
 
 PVector(float x_, float y_) {
  x = x_;
  y = y_;
 }
 
 void add (PVector v) {
  x = x + v.x;
  y = y + v.y;
 }
 
 void limit(float maxVelocity){
   if (x > maxVelocity) x = maxVelocity; 
   if (y > maxVelocity) y = maxVelocity;
 }
}

void setup(){
 size(640, 360);
 mov = new Mover();
}

void draw(){
 background(255);
 mov.update();
 mov.checkEdges();
 mov.display();
}
