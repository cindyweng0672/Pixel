class Pixels {

  color c;
  int x, y; //float
  float size;
  final int max=100;

  Pixels() {
    x=(int)random(width);
    y=(int)random(height);
    c=get(x, y);
  }

  void act() {
    if (dist(x, y, mouseX, mouseY)>max) {
      size=dist(x, y, mouseX, mouseY)/10;
    } else {
      size=0;
    }
  }

  void show() {
    noStroke();
    fill(c);
    square(x, y, size);
  }
}
