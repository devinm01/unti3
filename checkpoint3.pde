//colors
color darkestRed  = #6A040F;
color darkRed     = #9D0208;
color red         = #D00000;
color orange      = #E85D04;
color lightOrange = #F48C06;
color yellow      = #FFBA08;

float sliderY;
float shade;

void setup(){
  size(800,600);
  strokeWeight(5);
  stroke(orange);
  fill(orange);
  sliderY = 100;
}

void draw (){
  background(shade);
  
  shade = map(100, sliderY, 400, 0, 255);

  line(400,100,400,500);
  circle(400,sliderY,50);
}

void mouseDragged(){
  controlSlider();
}

void mouseReleased(){
  controlSlider();
}

void controlSlider(){
  if (mouseY > 100 && mouseY < 500 && mouseX > 375 && mouseX < 425){
    sliderY= mouseY;
  }
}
