size(500, 500);
loadPixels();

float xoff = 0.0;
for (int i = 0; i < width; i++) {
  float yoff = 0.0;
  for (int j = 0; j < height; j++){
    float bright = map(noise(xoff, yoff), 0, 1, 0, 255);   
    pixels[i+j*width] = color(bright);
    yoff += 0.01;
  }
  xoff += 0.01;
}

updatePixels();
/*
void setup(){
  size(640, 360);
  background(255);
}*/
