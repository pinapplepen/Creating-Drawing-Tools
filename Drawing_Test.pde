//Drawing Test
//William Cheng
//Block 1-2B

//palette of colors
color lightGreen     = #D4FF1A;
color blue           = #1ACFFF;
color cyan           = #1AFFF2;
color darkBlue       = #036CFC;
color darkestBlue    = #4003FC;
color white          = #ffffff;

//variables for color selection
color selectedColor;

void setup () { //Start setup =============================
  size (800, 600);
  strokeWeight(5);
  stroke(darkestBlue);
  selectedColor = darkBlue;
  
} //End setup =============================================

void draw() { //Start draw ================================
  background(lightGreen);
  
  //Buttons
  //Cyan
  if (dist(100, 100, mouseX, mouseY) <50) {
  stroke(white);
  } else {
  stroke(darkestBlue); 
  }
  
  tactile(100, 100, 50);
  fill(cyan);
  circle(100, 100, 100);
  
  
  
  //Blue
   if (dist(100, 300, mouseX, mouseY) <50) {
  stroke(white);
  } else {
  stroke(darkestBlue); 
  }
  
  tactile(100, 300, 50);
  fill(blue);
  circle(100, 300, 100);
  
  
  
  //Dark Blue
   if (dist(100, 500, mouseX, mouseY) <50) {
  stroke(white);
  } else {
  stroke(darkestBlue); 
  }
  
  tactile(100, 500, 50);
  fill(darkBlue);
  circle(100, 500, 100); 
  
  
  
  //indicator
  stroke(darkestBlue);
  fill(selectedColor); 
  square(300, 100, 400);

} //End draw ==============================================

void tactile(int x, int y, int r) { //Start tactile ====================
 if (dist(x, y, mouseX, mouseY) < r) {
  stroke(white);
  } else {
  stroke(darkestBlue); 
  }
  
} //End tactile
void mouseReleased() { //Start mouseReleased ==============

  //Cyan button
  if (dist(100, 100, mouseX, mouseY) < 50) {
    selectedColor = cyan;
  }
  
  
  //Blue buttom
  if  (dist(100, 300, mouseX, mouseY) <50) {
    selectedColor = blue;
  }
  
  //darkBlue button
  if (dist(100, 500, mouseX, mouseY) <50) {
    selectedColor = darkBlue; 
  }
  
  
} //End mouseReleased =====================================
