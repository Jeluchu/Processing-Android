int [] colores = {0,0,0}; //Colores del pincel

void setup(){
  fullScreen(); //Tamaño completo de la pantalla del dispositivo
  background(0); //El color del fondo será negro
  
  rect(0,1750,1920,1750); //Rectángulo en la que vendrán las diversas opciones de colores, etc
  
  fill(255,255,255); //Borrar pantalla
  rect(90,1800,70,70);
  
  fill(255,0,0); //Pincel Rojo
  rect(300,1800,70,70);
  
  fill(0,0,255); //Pincel Azul
  rect(390,1800,70,70);
  
  fill(28,219,13); //Pincel Verde
  rect(480,1800,70,70);
  
  fill(86,13,219); //Pincel Morado
  rect(570,1800,70,70);
  
  fill(231,255,0); //Pincel Amarillo
  rect(660,1800,70,70);
  
  fill(235,172,0); //Pincel Naranja
  rect(750,1800,70,70);
  
  fill(132,116,74); //Pincel Marrón
  rect(840,1800,70,70);
  
  fill(23,212,187); //Pincel Marrón
  rect(930,1800,70,70);
  
  stroke(255,195,0); //Color de la línea nada más iniciarlo (Naranja/Amarillo)
  strokeWeight(20); //Tamaño del ancho de la línea
  

};

void draw(){ 
  
 if ((mousePressed) && (mouseY < 1620)){  //Detecta la posición y la analiza para dibujar en ella
   
  line(mouseX,mouseY,pmouseX,pmouseY);
  };
 
};
  
//LAS OPCIONES DE ELECCIÓN DE COLOR Y BORRADO DE PANTALLA ESTÁN INACTIVOS v0.2  
void mouseClicked(){

  //Pincel Rojo
  if ((mouseX < 1) && (mouseX > 950) 
   && (mouseY < 1)  && (mouseY > 1745)) { 
   colores[0] = 255;
   colores[1] = 0;
   colores[2] = 0;

   
  //Pincel Azul
  if ((mouseX < 1) && (mouseX > 950) 
   && (mouseY < 1)  && (mouseY > 1745)) {

   colores[0] = 0;
   colores[1] = 0;
   colores[2] = 255;
   stroke(colores[0],colores[1],colores[2]); };  
   }

}