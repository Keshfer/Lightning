int startX = 150;
int startY = 0;
int endX = 150;
int endY = 0;
float fade = 0;
//Sets initial color of bolts
int rgbR = (int)(Math.random() * 256);
int rgbG = (int)(Math.random() * 256);
int rgbB = (int)(Math.random() * 256);
//

void setup()
{
  size(300,300);
  strokeWeight(10);
  background(0, 0, 0);
  //frameRate(1);
}
void draw()
{
    //working fade
    fade = fade + 100;
    fill(0, 0, 0, fade);
    rect(-10,-10,350,350);
    if ( fade >= 200) {
    fade = 0;
    }
    //
    
    stroke(rgbR, rgbG, rgbB);
    while (endX <= 300) {
      //Draws lightning
      endX = startX + ((int)((Math.random() * 31) - 15));
      endY = startY + ((int)(Math.random() * 21));
      line(startX, startY, endX, endY);
      startX = endX;
      startY = endY;
      //
    }
    rgbR = rgbR - ((int)((Math.random() * 201) - 100));
    rgbG = rgbG -((int)((Math.random() * 101) - 50));
    rgbB = rgbB - ((int)((Math.random() * 51) - 25));
    startX =150;
    startY = 0;
    endX = 150;
    endY = 0;

  // Slows the ligtning bolts
  delay(1000);
  //
  }
  while (true) {
    draw();
  }

void mousePressed()
{
  
}
