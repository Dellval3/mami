import controlP5.*;
ControlP5 gui;

int horizontal = 0;
int vertical = 0;

void circulo(int x, int y, int r) {
  fill(random(255), random(255), random(255));
  ellipse(x, y, 2*r, 2*r);
}

void bloco(int x, int y, int t) {
  fill(random(255), random(255), random(255));
  rect(x, y, t, t);
  circulo(x+t/2, y+t/2, t/2);
  circulo(x+t/2, y+t/2, t/int(random(3, 5)));
  circulo(x+t/2, y+t/2, t/int(random(6, 10)));
}

void setup(){
  size(600, 600);  
  noStroke();
  
  gui = new ControlP5(this);
  gui.addSlider("horizontal")
    .setPosition(20, 550)
    .setSize(120, 20)  
    .setRange(1, 6)
    .setValue(4)    
    .setNumberOfTickMarks(6);
   
  gui.addSlider("vertical")     
     .setPosition(550,20)
     .setSize(20,120)
     .setRange(1, 6)
     .setValue(4)
     .setNumberOfTickMarks(6);
}

void draw() {
  background(random(0,255));
  for (int i=0; i < horizontal; i++){
    for (int j=0; j < vertical; j++){
      bloco(i*100, j*100, 100);
    }
  }
  randomSeed(0);
  println("");
  println("");
  println(horizontal);
  println(vertical);
}