OPC opc;
PImage dot;

void setup()
{
  size(800, 800);

  // Load a sample image
  dot = loadImage("color-dot.png");

  // Connect to the local instance of fcserver
  opc = new OPC(this, "127.0.0.1", 7890);

  // Map one 64-LED strip to the center of the window
//opc.ledStrip(0, 55, width/2, height/2, width / 70.0, 0, false);
 //for (int i = 0; i < 8; i++){
   //opc.ledStrip(i*64, 15, width/2, i*15+30, 15, 0, false);
   
   // Set the location of several LEDs arranged in a strip.
  // Angle is in radians, measured clockwise from +X.
  // (x,y) is the center of the strip.
  //void ledStrip(int index, int count, float x, float y, float spacing, float angle, boolean reversed)
  
   for(int i = 0; i<1;i=i++) {
     opc.ledStrip(64*(i), 54, width/2, 15*(i+1), 15, 0, false);
     opc.ledStrip(64*(i+1), 51, width/2, 15*(i+2), 15, 0, false);
     opc.ledStrip(64*(i+2), 46, width/2, 15*(i+3), 15, 0, false);
     opc.ledStrip(64*(i+3), 46, width/2, 15*(i+4), 15, 0, false);
     opc.ledStrip(64*(i+4), 54, width/2, 15*(i+5), 15, 0, false);
     opc.ledStrip(64*(i+5), 51, width/2, 15*(i+6), 15, 0, false);
     opc.ledStrip(64*(i+6), 46, width/2, 15*(i+7), 15, 0, false);
     opc.ledStrip(64*(i+7), 46, width/2, 15*(i+8), 15, 0, false);
   }
   
     //opc.ledStrip(64*(0), 54, width/2, 15*(0+1), 15, 0, false);
     //opc.ledStrip(64*(0+1), 51, width/2, 15*(0+2), 15, 0, false);
     //opc.ledStrip(64*(0+2), 46, width/2, 15*(0+3), 15, 0, false);
     //opc.ledStrip(64*(0+3), 46, width/2, 15*(0+4), 15, 0, false);
     //opc.ledStrip(64*(0+4), 46, width/2, 15*(0+5), 15, 0, false);
     //opc.ledStrip(64*(0+5), 46, width/2, 15*(0+6), 15, 0, false);
     //opc.ledStrip(64*(0+6), 46, width/2, 15*(0+7), 15, 0, false);
     //opc.ledStrip(64*(0+7), 46, width/2, 15*(0+8), 15, 0, false);
     
     //opc.ledStrip(64*(8), 54, width/2, 15*(8+1), 15, 0, false);
     //opc.ledStrip(64*(8+1), 51, width/2, 15*(8+2), 15, 0, false);
     //opc.ledStrip(64*(8+2), 46, width/2, 15*(8+3), 15, 0, false);
     //opc.ledStrip(64*(8+3), 46, width/2, 15*(8+4), 15, 0, false);
     //opc.ledStrip(64*(8+4), 46, width/2, 15*(8+5), 15, 0, false);
     //opc.ledStrip(64*(8+5), 46, width/2, 15*(8+6), 15, 0, false);
     //opc.ledStrip(64*(8+6), 46, width/2, 15*(8+7), 15, 0, false);
     //opc.ledStrip(64*(8+7), 46, width/2, 15*(8+8), 15, 0, false);
}

boolean on=true;

void draw()
{
  background(0);

  // Draw the image, centered at the mouse location
  float dotSize = width * 0.2;
  image(dot, mouseX - dotSize/2, mouseY - dotSize/2, dotSize, dotSize);
}
