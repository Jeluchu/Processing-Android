package processing.test.prueba;

import processing.core.*; 
import processing.data.*; 
import processing.event.*; 
import processing.opengl.*; 

import java.util.HashMap; 
import java.util.ArrayList; 
import java.io.File; 
import java.io.BufferedReader; 
import java.io.PrintWriter; 
import java.io.InputStream; 
import java.io.OutputStream; 
import java.io.IOException; 

public class prueba extends PApplet {

int value =0;

float boxRotation = 0;    //Al inicio el cubo estar\u00e1 en la posici\u00f3n 0 sin giro

public void setup() {
             //Tama\u00f1o completo de la pantalla del dispositivo
  
  strokeWeight(8);
  rectMode(CENTER);
}

public void draw() { 

  
  //Con estos backgrounds podemos realizar un cambio de color entre uno con los diferentes ejes 
  background(mouseX * (255.0f/800), 0, 100);  
  background(mouseY * (150.0f/800), 250, 255);
  
  textSize(32);
  text("Pulsa 0 para salir", 500, 100);
  
  //Cambiamos la rotaci\u00f3n depende de la posici\u00f3n
  boxRotation += (float) (pmouseX - mouseX)/100;  
  
  //Con esto dibujamos un c\u00edrculo que podamos mover alrededor del cuadrado
  line(width/2, height/2, mouseX, mouseY);  
  ellipse(mouseX, mouseY, 40, 40);  
  
  //Y aqu\u00ed, podemos incluir los movimientos de rotaci\u00f3n que tendr\u00e1 en cubo 
  pushMatrix();  
    translate(width/2, height/2);  
    rotate(boxRotation);  
    rect(0,0, 150, 150);  
  popMatrix();  
  
};  


public void keyPressed() {
  if (value == 0) {
    exit();
  } else {
    value = 0;
  }
}
  public void settings() {  fullScreen();  smooth(); }
}
