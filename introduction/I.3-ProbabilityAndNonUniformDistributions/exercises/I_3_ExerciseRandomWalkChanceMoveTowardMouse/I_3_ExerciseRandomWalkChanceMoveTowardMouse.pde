/*
Create a Random walker with dynamic probabilities.
For example, give it a 50% chance of movinf in the direction fo the mouse
*/

Walker w;
float restOfProbs = 0.5 / 4;

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
   if (r < 0.5)  { // 50 % chance of moving towards mouse
     if (mouseX > x) x++;
     else x--;
     if (mouseY > y) y++; 
     else y--;
   }
   else if (r < 0.5 + restOfProbs) x++; 
   else if (r < 0.5 + restOfProbs * 2) x--;
   else if (r < 0.5 + restOfProbs * 3) y++;
   else y--;
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
