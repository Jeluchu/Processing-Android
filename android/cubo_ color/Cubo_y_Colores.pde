float boxRotation = 0;    //Al inicio el cubo estará en la posición 0 sin giro

void setup() {
  fullScreen();           //Tamaño completo de la pantalla del dispositivo
   smooth();  
   noStroke();  
   fill(255);  
   rectMode(CENTER);     //Este será un rectángulo situado en el centro
};  
  
void draw() {  
  //Con estos backgrounds podemos realizar un cambio de color entre uno con los diferentes ejes 
  background(mouseY * (255.0/800), 0, 0);  //Color rojo
  background(mouseY * (150.0/800), 200, 255); //Color turquesa (azul)
  //Cambiamos la rotación depende de la posición
  boxRotation += (float) (pmouseX - mouseX)/100;  
  
  //Con esto dibujamos un círculo que podamos mover alrededor del cuadrado
  line(width/2, height/2, mouseX, mouseY);  
  ellipse(mouseX, mouseY, 40, 40);  
  
  //Y aquí, podemos incluir los movimientos de rotación que tendrá en cubo 
  pushMatrix();  
    translate(width/2, height/2);  
    rotate(boxRotation);  
    rect(0,0, 150, 150);  
  popMatrix();  
};  