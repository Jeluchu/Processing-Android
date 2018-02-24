int x = 0;

void setup() {
  size(600, 600);
  background(0, 0, 255);
  strokeWeight(8);
}

void draw() {
  rect(random(600), random(600), random(255), random(255)); 
  fill(random(255), 192, 9);
}