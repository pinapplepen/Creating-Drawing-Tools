//Drawing Program Good Copy
//William Cheng
//Block 2-1B

//Variables
PImage pineapple;
PImage eraser; 
boolean pineappleOn; //true or false

//Colors
color red       = #FF0505;
color yellow    = #F6FF05;
color green     = #9AFF05;
color blue      = #05F5FF;
color purple    = #D005FF;
color black     = #000000;
color white     = #FFFFFF;
color tact      = #79FFB4;

color selectedColor;

void setup() { //Start Setup =============================================
  size(900, 700);
  background(255);
  pineapple = loadImage("pineapple.png");
  eraser = loadImage("eraser.png");
  pineappleOn = false;
  selectedColor = black; 
  
} //End Setup ============================================================




void draw() { //Start Draw ================================================
  //Toolbar
  stroke(142, 139, 139);
  fill(142, 139, 139);
  rect(0, 0, 150, 700);
  
  //Pineapple Button
  tactile2(0, 0, 100, 100);
  strokeWeight(3);
  fill (255);
  rect(40, 300, 75, 75);
  image(pineapple, 30, 300, 100, 75);
  
  //Eraser Button
  tactile2(40, 400, 75, 75);
  strokeWeight(3);
  fill (255);
  rect(40, 400, 75, 75);
  image(eraser, 40 , 400, 75, 75);
  
  //Buttons
  strokeWeight(2);
  
  //Red
  tactile(40, 75, 25);
  fill(red);
  circle(40, 75, 50);
  
  
  //Yellow
  tactile(110, 75, 25);
  fill(yellow);
  circle(110, 75, 50);
  
  
  //Green
  tactile(40, 150, 25);
  fill(green);
  circle(40, 150, 50); 
  
   //Blue
  tactile(110, 150, 25);
  fill(blue);
  circle(110, 150, 50); 
  
  //Purple
  tactile(40, 225, 25);
  fill(purple);
  circle(40, 225, 50); 
  
  //Black
  tactile(110, 225, 25);
  fill(black);
  circle(110, 225, 50); 
  
} //End Draw ==============================================================


void tactile(int x, int y, int r) { //Start tactile ====================
 if (dist(x, y, mouseX, mouseY) < r) {
  stroke(tact);
  } else {
  stroke(black); 
  }
  
} //End tactile

void tactile2(int x, int y, int w, int h) {
  if (mouseX > x && mouseX < x+w && mouseY > y && mouseY < y+w) {
    stroke(tact);
  } else {
    stroke(black);
  }
    
}



void mouseDragged() {
 if (pineappleOn == false) {
   
  //squiggly line
  strokeWeight(5);
  stroke(selectedColor);
  line(pmouseX, pmouseY, mouseX, mouseY);
} else {
  //pineapple drawing
  image(pineapple, mouseX, mouseY, 100, 100);
 }
}

void mouseReleased() { //=========================================================
  //Pineapple button
  if (mouseX > 40 && mouseX < 115 && mouseY > 300 && mouseY < 375) {
  pineappleOn = !pineappleOn;
    
 
    
  //Color buttons change color
  
  //Red
   if (dist(40, 75, mouseX, mouseY) <25) {
  selectedColor = red;
  } 
  
  //Yellow
     if (dist(110, 75, mouseX, mouseY) <25) {
  selectedColor = yellow;
  } 
  
  //Green
     if (dist(40, 150, mouseX, mouseY) < 25) {
  selectedColor = green;
  } 
  
  //Blue
   if (dist(110, 150, mouseX, mouseY) < 25) {
  selectedColor = blue;
  } 
  
  //Purple
   if (dist(40, 225, mouseX, mouseY) < 25) {
  selectedColor = purple;
  } 
  
  //Black
   if (dist(110, 225, mouseX, mouseY) < 25) {
  selectedColor = black;
  } 
  
  }
} // ===========================================================================


    
void showOnOff() {
  
  
  
}
