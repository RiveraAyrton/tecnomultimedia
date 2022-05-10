void setup() {
  println("Setup");
  size(400, 400);
  background(0);
  stroke(255, 255, 255);
  strokeWeight(3);
  rectMode(CENTER);
  smooth();
}

void draw() {
  background(0);
  
  println("Hola",200,200);
  println("X:");
  println(mouseX);
  println("Y:");
  println(mouseY);

  strokeWeight(2);
  fill(255);/*rgb letras*/
  
  strokeWeight(5); /*ancho de circulo*/
  noFill();
  circle(80,290, 130);
  circle(300,290, 130);


  //text
  textSize(64);
  text("Fixie", width/8, height/4);
  strokeWeight(5);/*ancho de linea*/
  
  triangle(150,200,80,290,170,310); 
  line(269,180 , 300,290); /*orquilla*/
  line(150,200 , 270,200); /*barra alta*/
  line(170,312 , 275,210); /*barra baja*/
  
  line(273,200 , 300,290); /*barra centra*/
  circle(170,312, 40);  /*plat0*/
  circle(80,290, 10); /*piñon*/
  
  line(80,285,170,292);/*cadenaalta*/
  line(80,295,167,332);/*cadenabaja*/
  
  line(183,273 , 160,344); /*vielas*/
  line(170,273 , 195,273); /*pedal 1*/
  line(150,344 , 173,344); /*pedal 2*/
  line(269,180 , 285,175); /*potencia*/
  line(280,180 , 285,175); /*manubrio*/
  triangle(140,184 ,142,190 ,160,185); /*sillin*/
  line(139,184,172,184);/*acabado sillin*/
  
  
  
}
