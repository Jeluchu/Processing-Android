package processing.test.rectangulosmov;

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

public class rectangulosmov extends PApplet {

//Al mover el cursor, se mover\u00e1n los rect\u00e1ngulos tanto en el "Eje X" como en el "Eje Y"
public void setup() {
  
}

public void draw() {
  background(15); 
  rect(20, mouseY, 80, pmouseY); 
  println(mouseY + " : " + pmouseY);
  fill(255);
  rect(mouseX, 20, mouseX, 80);
}
  public void settings() {  size(1080, 1920); }
}
