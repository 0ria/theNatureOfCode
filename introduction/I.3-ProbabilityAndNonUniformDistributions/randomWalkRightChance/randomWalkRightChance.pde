/*
Create a Random walker that hass a tendency to the right.
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
   float r = random(1);
   if (r < 0.4) x++; // 40% chance of moving right
   else if (r < 0.6) x--; // 20% chance of moving left
   else if (r < 0.8) y++; // 20% chance of moving down
   else y--; // 20% chance of moving up
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
