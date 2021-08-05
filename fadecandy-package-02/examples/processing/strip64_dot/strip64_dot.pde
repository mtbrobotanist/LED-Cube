OPC opc;
PImage dot;
PImage im;

void setup()
{
  size(1000, 1000);
  im = loadImage("flames.jpeg");
  
  // Load a sample image
  dot = loadImage("color-dot.png");

  // Connect to the local instance of fcserver
  opc = new OPC(this, "127.0.0.1", 7890);

  // Map one 64-LED strip to the center of the window

   //opc.ledStrip(64*(i*8+0), 54, width/2, 10*(i+1), 15, 0, false);
   //opc.ledStrip(64*(i*8+1), 51, width/2, 10*(i+2), 15, 0, false);
   //opc.ledStrip(64*(i*8+2), 46, width/2, 10*(i+3), 15, 0, false);
   //opc.ledStrip(64*(i*8+3), 46, width/2, 10*(i+4), 15, 0, false);
   //opc.ledStrip(64*(i*8+4), 54, width/2, 10*(i+5), 15, 0, false);
   //opc.ledStrip(64*(i*8+5), 51, width/2, 10*(i+6), 15, 0, false);
   //opc.ledStrip(64*(i*8+6), 46, width/2, 10*(i+7), 15, 0, false);
   //opc.ledStrip(64*(i*8+7), 46, width/2, 10*(i+8), 15, 0, false);

  for(int i = 0; i<80 ;i++){
    opc.ledStrip(64*(i), 54, width/2, 10*i, 10, 0, false);
  }
}

void draw()
{
  int imHeight = im.height * width / im.width;

  // Scroll down slowly, and wrap around
  float speed = 0.05;
  float y = (millis() * -speed) % imHeight;
  
  // Use two copies of the image, so it seems to repeat infinitely  
  image(im, 0, y, width, imHeight);
  image(im, 0, y + imHeight, width, imHeight);
  //background(0);

  // Draw the image, centered at the mouse location
  //float dotSize = width * 0.5;
  //image(dot, mouseX - dotSize/2, mouseY - dotSize/2, dotSize, dotSize);
}
