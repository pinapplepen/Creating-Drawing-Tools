//Drawing Program Good Copy
//William Cheng
//Block 2-1B

//Variables
PImage pineapple;
boolean pineappleOn; //true or false



void setup() { //Start Setup =============================================
  size(900, 700);
  background(255);
  pineapple = loadImage("pineapple.png");
  pineappleOn = true;
  
} //End Setup ============================================================




void draw() { //Start Draw ================================================
  //Toolbar
  stroke(142, 139, 139);
  fill(142, 139, 139);
  rect(0, 0, 150, 700);
  
  //Pineapple Button
  tactile(0, 0, 100, 100);
  strokeWeight(1);
  stroke(255);
  fill (255);
  rect(60, 50, 75, 75);
  image(pineapple, 50, 50, 100, 75);
  
} //End Draw ==============================================================


void mouseDragged() {
 if (pineappleOn == false) {
   
  //squiggly line
  strokeWeight(5);
  stroke(0);
  line(pmouseX, pmouseY, mouseX, mouseY);
} else {
  //pineapple drawing
  image(pineapple, mouseX, mouseY, 100, 100);
 }
}

void mouseReleased() {
  //Pineapple button
  if (mouseX > 0 && mouseX < 100 && mouseY > 0 && mouseY < 100) {
  pineappleOn = !pineappleOn;
    
  }
}

void tactile(int x, int y, int w, int h) {
  if (mouseX > x && mouseX < x+w && mouseY > y && mouseY < y+w) {
    fill(255, 255, 0);
  } else {
    fill(255);
  }
    
}
    
void showOnOff() {
  
  
  
}
