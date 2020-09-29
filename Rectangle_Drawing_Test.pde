//Rectangle Drawing Test\
//Pallette
color darkPurple = #230F2B;
color pink = #F21D41;
color lightGreen = #EBEBBC;
color medGreen = #DCE3C5;
color darkGreen = #82B3AE;
float sliderX;
int toggle;
float shade;
float thickness;

void setup() {
  size (800, 600);
  strokeWeight(5);
  textSize(30);
  toggle = 1;
  sliderX = 400;
  shade = 0;
  thickness = 0;
}

void draw() {
  background(shade);
    shade = map(sliderX, 100, 700, 0, 255);
    thickness = map(sliderX, 100, 700, 0, 255);
    strokeWeight(thickness);
    
  
  //fill(darkGreen);
  //stroke(lightGreen);
  //rect(100, 100, 200, 100);
  line(100, 300, 700, 300);
  circle(sliderX, 300, 50);
 
//if (toggle > 0) {
//guidelines(); 
//}
}

void mouseDragged() {
  controlSlider();
}

void mouseReleased() {
  controlSlider();
}

void controlSlider() {
  if (mouseX > 100 && mouseX < 700 && mouseY > 275 && mouseY < 325) {
    sliderX = mouseX;
  }
  
  shade = map(sliderX, 100, 700, 0, 255);
}
  
  
  
  
 // if (mouseX > 100 && mouseX < 300 && mouseY > 100 && mouseY < 200);
 // toggle = toggle * -1; 
//}

//void guidelines() {
//  fill(pink);
 // stroke(pink);
//}
