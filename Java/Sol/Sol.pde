//Características del cuadro, del la elipse (sol) y el color del mismo
size(500, 500);
stroke(255);
strokeWeight(10);
background(51, 197, 255);
fill(255, 204, 0);
ellipse(250, 250, 250, 250);

//Zona Superior de los rayos del sol
strokeCap(ROUND); 
line(50, 60, 100, 110);
strokeCap(ROUND); 
line(450, 50, 400, 100);
strokeCap(ROUND);
line(250, 50, 250, 100);

//Zona Media de los rayos del sol
strokeCap(ROUND); 
line(100, 250, 30, 250);
strokeCap(ROUND); 
line(400, 250, 460, 250);

//Zona Inferior de los rayos del sol
strokeCap(ROUND);
line(250, 450, 250, 390);
strokeCap(ROUND);
line(400, 400, 350, 350);
strokeCap(ROUND);
line(150, 350, 50, 450);