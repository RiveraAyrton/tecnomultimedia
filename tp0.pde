PImage metro;
void setup(){
  size(800, 400);
  textSize(32);
  metro = loadImage("cmetro.png");
}

void draw(){
  println("x:");
  println(mouseX);
  println("y:");
  println(mouseY);
  
  background(255,255,255,255);
  image (metro, 0, 0);
  
  //cinta blanca
  stroke(0);
  strokeWeight(1);
  fill(200);
  rect(635,205,125,45); 

  // base remache
  stroke(180);
  strokeWeight(6);
  fill(180);
  rect (700,230,58,10,25);
  line(759,204,760,252);
  
  // ellipse grande
  stroke(243,200,0);
  strokeWeight(1);
  fill(255,222,0);
  ellipse (520,139,235,271);
  
  //ellipse mediana
  strokeWeight(1);
  fill(243,200,0);
  ellipse (520,168,195,212);  

  //ellipse chica
  strokeWeight(1);
  stroke(218,181,0);
  fill(218,181,0);
  ellipse (520,170,150,163);
  
  //escquinas del cuerpo
 
  stroke(253,222,0);
  strokeWeight(1);
  fill(255,222,0);
  circle(460,250,50);
  rect (590,180,50,100,25);
  
  strokeWeight(22);
  line(560,257,615,270);
  
  //que solo se vea la esquina inf isq
  stroke(0);
  strokeWeight(1);
  fill(0,0,0);
  rect (517,88,76,80);

  //que solo se vea la esquina sup dere
  stroke(0);
  strokeWeight(1);
  fill(0,0,0);
  rect (448,190,80,58);
  
  //rectangulo angosto);
  stroke(0);
  strokeWeight(1);
  fill(0,0,0);
  rect (447,175,81,11);

//pa cubrir rect negros
  noFill();
  strokeWeight(30);
  stroke(243,200,0);
  ellipse (520,168,178,195);
  
  //DIBUJO REGLA
  strokeWeight(1);
  stroke(0);
  line(543,166,543,245);
  line(560,166,560,237);
  
  //PALABRAS
  
  fill(218,181,0);
  textSize(10);
  text("P O W E R  T A P E", 455,185);
  
  fill(218,181,0);
  textSize(30);
  text("10", 475,225);
  
  fill(218,181,0);
  textSize(25);
  text("m", 506,225);

  fill(218,181,0);
  textSize(12);
  text("33FT", 505,210);
  
  fill(218,181,0);
  textSize(8);
  text("MADE IN CHINA", 475,200);
  
  fill(0);
  textSize(5);
  text("1", 550,180);
  text("2", 550,190);
  text("3", 550,200);
  text("4", 550,210);
  text("5", 550,220);
  text("6", 550,230);
  text("7", 550,240);
  
  //remaches
  noStroke();
  strokeWeight(1);
  fill(0);
  ellipse (710,235,12,10);
  ellipse (730,235,12,10);
  ellipse (750,235,12,10);
  
  //sombras antes de lineas
  stroke(220);
  strokeWeight(6);
  line(640,247,758,247);

  //traba
  //BASE
  stroke(0);
  strokeWeight(15);
  line(629,99,633,143);
  //CHICO ALTO
  stroke(0);
  strokeWeight(5);
  line(633,112,620,84);
   //SOBRE BASE
  stroke(0);
  strokeWeight(15);
  line(635,105,638,136);
  //CHICO BAJO
  stroke(0);
  strokeWeight(5);
  line(636,144,634,170);
  


}
