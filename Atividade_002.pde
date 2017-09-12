int n = int(random(1,12));

void setup(){
  size(600,150);
  for(int i = n; i > 0; i--){ //<>//
    rect(width - (i*50), 50, 50, 50);
  }
}