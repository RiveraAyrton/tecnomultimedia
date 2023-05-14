//Imagenes
PImage mes1;
PImage mes2;
PImage estante;
PImage usuario;
PImage fondactual;

//variable fuente
PFont cursi;

//variables numericas
int posx; int posy; // variables de posicion del texto 1 y 2
int contmultiuso; //iniciador de secuencia y para poner en 0cero al finalizar luego de precionar x
int tamtex1;
int tamtex2; //el tamaño de tex1y2 para que aumente
int tiempo;
int texy3; //altura del texto3
int alpha;//opacidad texto4

// textos a animar
String texto0;
String texto1;
String texto2;
String texto3;
String texto4;
String textofin;

void setup() {

  frameRate(30); //controla los fps a 30
  size(640, 480);

  //cargando fuentes
  cursi = loadFont("Rockwell-Bold-20.vlw");

  //guarda imagen dentro de variable
  mes1 =loadImage("mesa1.jpg");
  mes2 =loadImage("mesa2.jpg");
  estante =loadImage("estante.jpg");
  usuario =loadImage("usuario.jpg");

  posx = 80;
  posy = 310;  //aumentarán o disminuira depende donde va la frace
  tamtex1 = 200;
  tamtex2 = 200; //tamaño base para primer
  contmultiuso = 0; //CONTADOR MULTI USO
  alpha=0;
  //textos a animar
  texto1 ="para quienes tienen un lindo desastre";
  texto2 ="para quienes quieren trabajar en orden";
  texto3 ="Para quienes tienen un taller con una mesa ocupada…\n la turbo estantería multiusos, es lo que necesitan…\n con sus cuatro turbo motores te ayuda\n a organizar tu área de trabajo más rápido";
  texto4 ="yo tenia una, la puse en mi pared pero…\n el peso de mis herramientas hizo que se desprenda y…\n y luego caiga sobre los figurines de cristal de mi esposa…\n es una porqueria este producto/tp.";
  texto0 ="Haga click en la pantalla para comenzar";
  textofin ="Precione una tecla para reiniciar";
  
  //postexto 3 altura
  texy3=0;
  
  tiempo = 0;
}

void draw() {
  //fondo inicial
  background(255, 255, 255, 255);
  textFont(cursi);
  if(contmultiuso==0){
    textSize(25);
    fill(0, 0, 0);
    text (texto0, 50, 200);    
  }
  
   //muestra pos X, Y de click
   println("x:");
   println(mouseX);
   println("y:");
   println(mouseY);
   
  //muestra Fps
  println(frameCount);

  //datos para tiempo
  println("contmultiuso:");
  println(contmultiuso);
  println("tiempo:");
  println(tiempo);


  
  if (mousePressed==true && contmultiuso==0) {
      contmultiuso++;
  }

  if (tiempo >= 1 && tiempo < 3 ) { //img1 inicia el crecimiento
    image (mes1, 0, 0);
    textSize((tamtex1++)/10);
    fill(255, 0, 0);
    text (texto1, posx, posy);
  }
  if (tiempo >= 3 && tiempo < 6) { //img2 inicia el crecimiento
    image (mes2, 0, 0);
    textSize((tamtex2++)/10);
    fill(255, 0, 0);
    text (texto2, posx, posy);
  }
  if (tiempo >= 6 && tiempo < 20) { //img3 que aparece el texto bruscamente si sepuede agregar una explosión mejor
    image (estante, 100, 100);
    textSize(20);
    fill(0, 0, 0);
    text (texto3, 100, texy3++);
  }
  if (tiempo >= 20) { //img4que aumente su opacidad asta verse bien
    image (usuario, 0, 0);
    textSize(10);
    fill(0, 0, 0, alpha++);
    text (texto4, 355, 280);
    textSize(10);
    text (textofin,0,480);
  }
  if (contmultiuso>=30) { //se ingresa este condicional para medir el tiempo y para contar de a 30 fotogramas
    contmultiuso=1; //cuando llega 30o mas fotogramas regresa a cero y
    tiempo++; //tiempo marca 1 segundo y ta puedo controlar el cambio de pantalla
  }
  if(contmultiuso > 0){
  contmultiuso++; //este va hacer que se siga aumentando, hasta que decida ponerlo en cero al final con x
  }
  
  //para regresar todo a cero
  if (keyPressed && contmultiuso > 0 ) {
    contmultiuso = 0;
    tamtex1 = 200;
    tamtex2 = 200;
    tiempo=0;
    posx = 80;
    posy = 310;
    //fondo inicial
    background(255, 255, 255, 255);
  }
}
