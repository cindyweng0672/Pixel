/*
loadImage
 draw image
 */
PImage pic;

Pixels[] p;
int n=1000;

void setup() {
  fullScreen();

  pic=loadImage("colorfulcat.jpeg");
  pic.resize(width, height);
  image(pic, 0, 0);

  p=new Pixels[n];

  for (int i=0; i<n; i++) {
    p[i]=new Pixels();
  }
}

void draw() {
  image(pic, 0, 0);
  for (int i=0; i<n; i++) {
    p[i].act();
    p[i].show();
  }
}
