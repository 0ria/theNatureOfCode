import java.util.Random;
float t = 0;

void setup(){
 size(640, 360);
 background(255);
}

void draw(){
  float n = noise(t);
  float x = map(n,0,1,0,width);
  ellipse(x,180,16,16);
  t+=0.01;
}
