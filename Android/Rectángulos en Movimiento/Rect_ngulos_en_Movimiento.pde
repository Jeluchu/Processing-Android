//Al mover el cursor, se moverán los rectángulos tanto en el "Eje X" como en el "Eje Y"
void setup() {
  fullScreen();
}

void draw() {
  background(15); 
  rect(20, mouseY, 80, pmouseY); 
  println(mouseY + " : " + pmouseY);
  fill(255);
  rect(mouseX, 20, mouseX, 80);
}