import guru.ttslib.*;

PImage img;
PImage img2;

float x=2;
float y;

float g;
float h;

TTS tts;

void setup() {
  size(800,800);
  img = loadImage("purple.png");
  img2 = loadImage("red.jpg");
  tts = new TTS();
  

}

void draw() {
  background(255);
    image(img,x,100,300,200);
    image(img2,100,g+400,300,200);

}

void mousePressed() {
  tts.speak("Purple Dog");
  
  x = x * 2;
  
  if ( x > width) {
    x = 2;
  }
  
}

void keyPressed() {
 tts.speak("Red Bird"); 
 
 g = g + sin(4);
}

  