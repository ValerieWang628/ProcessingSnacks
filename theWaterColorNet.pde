float x;
float y;
float r;
float g;
float b;
float a;
float wid;
float leg;
float speedX = 10;
float speedY = 9;




void setup(){
  background(255);
  size(600,600);
}

void draw(){
  //background(r, g, b, a);
  stroke(r, g, b, a);
  ellipse(x, y, wid, wid);
  wid = random(0,30);
  //leg = random(0,60); 
  x = x + speedX;
  //speedX = speedX + 0.12;
  y = y + speedY;
  //speedY = speedY + 0.12;
  //speedX = 10;
  //speedY = 3;
  
  if(x > width || x < 0){
    speedX = speedX * -1;
  }
  if(y > height || y < 0){
    speedY = speedY * -1;
  }
  
  //x = mouseX + random(-10, 10);
  //y = mouseY + random(-20, 20);
  
  fill(r, g, b, a);
  r = random(0, 255);
  g = random(0, 255);
  b = random(0, 255);
  a = random(0, 255);
  
  if(x > 0 && x < 300 && y > 0 && y < 300){
  r =  r + 185;
  } else if(x > 300 && x < 600 && y > 0 && y < 300){
  g = g + 185;
  } else if(x > 300 && x < 600 && y > 300 && y < 600){
  b = b + 150;
  } else if(x > 0 && x < 300 && y > 300 && y < 600){
  a = a + 100;
  a = random(100, 255);
  g = random(50, 100);
  //b = random()
  }
  
  //line(width/2, 0, height/2, 0);
  //line(height/2, 0, width/2, 0);
  //stroke(0);
  
   
}
