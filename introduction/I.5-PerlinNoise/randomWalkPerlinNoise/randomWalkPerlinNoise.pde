Walker w;

class Walker {
  float x, y;
  
  float tx, ty;
  
  Walker() {
    tx = 0;
    ty = 10000;
  }
  
  void step(){
    x = map(noise(tx), 0, 1, 0, width);
    y = map(noise(ty), 0, 1, 0, height);
    tx += 0.001;
    ty += 0.001;
  }
  
  void display(){
    stroke(255);
    point(x,y);
  }
}

void setup(){
  size(640, 360);
  background(0);
  w = new Walker();
}

void draw(){
  w.step();
  w.display();
}
