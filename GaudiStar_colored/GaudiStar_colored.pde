
int posXmove;
int posXmir;
int posXreset;
int posXfix;
int posXtoRight;



int posYmove;
int posYmir;
int posYreset;
int posYfix;
int posYup;

int difference = 6;

int gap;


color backgroundColor = color(255,127,0);

void setup(){
  
  size(1000, 1000);
  background(backgroundColor);
  
  posXfix = width/2;
  posYfix = height/2;
  
  posXreset = width/2;
  posYreset = height/difference;
  
  reset();
  
  frameRate(10);
  
  
  
  
  
}


void draw(){
  
  
 
  pushMatrix();
  
  translate(0,0);
  lineDraw1();
  
  popMatrix();
  
  
  
  posXmove += gap;
  posYmove += gap;
  posXtoRight += gap;
  posYup -= gap;
  
  if (posYmove >= posXreset) {
    reset();
  }
  
  //println("Xmove:" + posXmove);
  println("Ymove:" + posYmove);
  
  //println("Xmir:" + posXmir);
  //println("Ymir:" + posYmir);

  
  
}


void reset(){
  
  background(backgroundColor);
  posXmove = posXreset;
  posYmove = posYreset;
  posXtoRight = width/difference;
  posYup = height/2;
  
  gap = int(random(4, 15));
  
}

void lineDraw1 (){
  
  
  //Calculate mirror value
  posXmir = (posXfix - posXmove) + posXfix;
  posYmir = (posYfix - posYmove) + posYfix;
  
  
  //Draw lines
  stroke(200, 16, 46);
  line(posXfix, posYmove, posXmove, posYfix); //up right line
  
  stroke(255, 255, 255);
  line(posXfix, posYmove, posXmir, posYfix); //up left
  
  stroke(0, 61, 165);
  line(posXfix, posYmir, posXmir, posYfix); //down left
  
  stroke(0, 0, 0);
  line(posXfix, posYmir, posXmove, posYfix); //down right
  
}
