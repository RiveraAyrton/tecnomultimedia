int veloDecreditos = frameCount ;
String texto1ilustradores;// = "parte,\n 1  ";
String texto2voces;
String texto3musica;
String texto4otros;
int inicio;
int calculafin;
boolean pulsar;
int contadorpart;
PFont A_bolt;
PImage logo1;
int arribaT;
void setup() {
  size(800, 600);
  textAlign(CENTER);
  A_bolt=loadFont("ArialNarrow-Bold-40.vlw");
  textFont(A_bolt);
  textSize(15);
  texto1ilustradores= "DISEÑADORES\n Victor Antonov\n Ted Backman\n Kelly Bailey\n Jeff Ballinger\n Matt Bamberger\n Aaron Barber\n Yahn Bernier\n Ken Birdwell\n Derrick Birum\n Chris Bokitch\n Steve Bond\n Matt Boone\n Charlie Brown\n Julie Caldwell\n Dario Casali\n Yvan Charpentier\n Jess Cliffe\n John Cook\n Greg Coomer\n Kellie Cosner\n Scott Dalton\n Kerry Davis\n Jason Deakins\n Ariel Diaz\n Quintin Doroquez\n Martha Draves\n Laura Dubuk\n Mike Dunkle\n Mike Dussault\n Rick Ellis\n Dhabih Eng\n Miles Estes\n Adrian Finol\n Bill Fletcher\n Moby Francke\n Pat Goodwin\n Chris Green\n Chris Grinstead\n John Guthrie\n Leslie Hall\n Damarcus Holbrook\n Tim Holt\n Brian Jacobson\n Erik Johnson\n Jakob Jungels\n Iikka Keranen\n Eric Kirchmer\n Marc Laidlaw\n Jeff Lane\n Tom Leonard\n Doug Lombardi\n Randy Lundeen\n Scott Lynch\n Ido Magal\n Gary McTaggart\n John Morello II\n Bryn Moslow\n Gabe Newell\n Tri Nguyen\n Jake Nicholson\n Martin Otten\n Kristen Perry\n Bay Raitt\n Alfred Reynolds\n Dave Riller\n Danika Rogers\n David Sawyer\n Aaron Seeler\n Nick Shaffner\nTaylor Sherman\nEric Smith\n David Speyrer\n Jay Stelly\n Jeremy Stone\n Mikel Thompson\n Kelly Thornton\n Carl Uhlman\n Bill Van Buren\n KayLee Vogt\n Robin Walker\n Josh Weier\n Doug Wood\n Matt T. Wood\n Matt Wright";
  texto2voces="VOCES\n Robert Guillaume | Dr. Eli Vance\n Robert Culp | Dr. Wallace Breen\n Lou Gossett, Jr. | Vortigaunt\n Michelle Forbes | Dr. Judith Mossman\n Merle Dandridge | Alyx Vance\n Mike Shapiro | Barney Calhoun\n Mike Shapiro | Gman\n Harry S. Robins | Dr. Isaac Kleiner\n Jim French | Father Grigori\n John Patrick Lowrie | Citizens Misc. characters\n Mary Kae Irvin | Citizens|Misc. characters\n Ellen McLain | Overwatch";
  texto3musica="DIRECTOR MUSICAL\n Kelly Bailey\n\n\n\n CASTING DE VOZ:\n Shana Landsburg|Teri Fiddleman\n\n\n\n VOICE RECORDING:\n Pure Audio, Seattle, WA\n LA Studios, LA, CA\n\n\n\n PROGRAMACIÓN Y LOGISTICA DE GRAVACION DE VOZ:\n Pat Cockburn, Pure Audio\n\n\n\nTRADUCCIONES:\n SDL";
  texto4otros="Crack Legal Team:\n Liam Lavery\n Jason Holtman\n Karl Quackenbush\n Kristen Boraas\n Kevin Rosenfield\n Alan Bruggeman\n Dennis Tessier\n\n\n\n Gracias a los siguientes por el uso de sus rostros:\n Jamil Mullen\n Art Min\n Larry 'The Count' Heard\n Ted Cohrt\n Roger Guay\n Frank Sheldon\n Travis Dunlop\n Daniel Dociu\n Van Crowder\n Joey Paresa\n Chau Luu\n Kim Harris-Jones\n Michael S. Smith\n Joe Cairo\n Naomi Cotton\n Sandro Consi\n Lakeetra Gilbert\n Erdin Grcic\n Kanisha Speyrer\n Warren Slough\n\n\n\nAgradecimientos especiales:\n Alienware\n ATI\n Dell\n Falcon Northwest\n Havok\n SOFTIMAGE\n and Don Kemmis, SLK Technologies";
  logo1 = loadImage("logo.png");
  inicio=700;
  contadorpart=0;
  calculafin =0;
  pulsar=false;
  arribaT=0;
}

void draw() {
  background(0);
  image(logo1, 200, 200, 400, 100);
  //primera tanda   
  if (contadorpart == 0) {
    image(logo1, width, height);
    veloDecreditos = frameCount; 
    text (texto1ilustradores, width/2, inicio - veloDecreditos );//primera tanda de credito 
    calculafin= inicio-frameCount; //ayudita para calcular en que resultado se deja de ver
    println(calculafin); //aydudita cuando esto llega a -1400 termina en pantalla la tanda de creditos

    if (calculafin == (-1400)) {
      contadorpart=contadorpart + 1;
      pulsar=true;
    }
  }

  //segunda tanda//////////////////////  
  /*if(contadorpart ==  1){*/  //ponemos a todo  en cero 
  if (pulsar ==  true) { //regresa aquí siempre que termine otra tanda
    calculafin = 0;
    inicio=700;
    frameCount = 0;
    pulsar=false;
    println(inicio, frameCount, pulsar);
  }

  if (contadorpart ==  1) {
    veloDecreditos=frameCount; 
    text (texto2voces, width/2, inicio - veloDecreditos );//segunda tanda de credito 
    calculafin= inicio-frameCount;
    println(calculafin); //cuando esto llega a -395 termina el recorrido

    if (calculafin == (-200)) {
      contadorpart=contadorpart+1;
      pulsar=true;
    }
  }  
  //tercera tanda///////////////////////  
  if (contadorpart ==  2) {
    veloDecreditos=frameCount; 
    text (texto3musica, width/2, inicio - veloDecreditos );//segunda tanda de credito 
    calculafin= inicio-frameCount;
    println(calculafin); //cuando esto llega a -700 termina el recorrido

    if (calculafin == (-300)) {
      contadorpart=contadorpart+1;
      pulsar=true;
    }
  }  

  //cuarta tanda final//////////////////////////
  if (contadorpart ==  3) {
    veloDecreditos=frameCount; 
    text (texto4otros, width/2, inicio - veloDecreditos );//segunda tanda de credito 
    calculafin= inicio-frameCount;
    println(calculafin); //cuando esto llega a -395 termina el recorrido

    if (calculafin == (-900)) {
      contadorpart=contadorpart+1;
      pulsar=true;
    }
  }  





  /*if(keyPressed || mousePressed){
   frameCount=0;
   }
   */
}
