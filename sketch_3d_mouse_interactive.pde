float xRotation, yRotation;
PImage img;

void setup()
{
  size(800, 800, P3D);
  img = loadImage("strong1.jpg");
  textureMode(NORMAL);
}

void draw() 
{
  noStroke();
  background(255, 255, 255);
  
  translate(width/2, height/2);
  
  yRotation = map(mouseX, 0, width, 0, 360);
  xRotation = map(mouseY, 0, height, 0, 360);
  rotateY(radians(yRotation));
  rotateX(radians(xRotation));
  
  
  beginShape();
  texture(img);
  vertex(10, 10, 0, 0, 0);
  vertex(200, 10, -50, 0, 1);
  vertex(230, 250, 20, 1, 1);
  vertex(15, 240, -75, 1, 0);
  endShape(CLOSE);
  
}
