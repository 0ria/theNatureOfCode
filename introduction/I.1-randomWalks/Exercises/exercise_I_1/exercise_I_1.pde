/*
Create a Random walker that hass a tendency to move down to the right.
*/

Walker w;

class Walker {
 int x;
 int y;
  
 Walker(){
   x = width/2;
   y = height/2;
 }
 
 void display(){
  stroke(0);
  point(x,y);
 }
 
 void step(){
   float stepx = random(3.15)-1;
   float stepy = random(3.15)-1;
   x += stepx;
   y += stepy;
 }
}

void setup(){
 size(640, 360);
 w = new Walker();
 background(255);
}

void draw(){
 w.step(); 
 w.display();
}
