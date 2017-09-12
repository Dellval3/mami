void setup() {
  size(640, 360);
  background(1);
}

void draw() {
  variableEllipse(mouseX, mouseY, pmouseX, pmouseY);
}

void variableEllipse(int x, int y, int px, int py) {
  float speed = abs(x-px) + abs(y-py);
  fill(255, 51, 51);
  stroke(speed);
  ellipse(x, y, speed, speed);
}