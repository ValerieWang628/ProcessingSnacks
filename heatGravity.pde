float x = 100;
float y = 0;
float r;
float g;
float b;
float a;
float w = random(20);

float speedX = 0;
float speedY = 0;
float gravity = 0.1;

void setup(){
  size(1000,400);
  background(0);
}

void draw(){
  //background(255);
  fill(r, g, b, a);
  r = random(150,255);
  g = random(180);
  b = random(100);
  a = random(255);
  
  noStroke();
  rectMode(CORNER);
  rect(x, y, w, w);
  
  x = x + speedX;
  y = y + speedY;
  speedY = speedY + gravity;
  
  if(y > height){
    speedY = speedY * -0.95;
    speedX = speedX + 0.2;
  }
  
}
