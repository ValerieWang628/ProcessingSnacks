float x = 10;
float y = 10;
float x1 ;
float y1 = 595;
float speedX1 = 3;
float speedY1 = 2;
float speedX = 4;
float speedY = 5;
boolean ballRelease = false;
float boardX;
float releaseY;
float releaseSpeedX;
float releaseSpeedY;


void setup(){
  size(600,600);

}

void draw(){
  background(0,0,0);
  //ball initialized
  ellipse(x, y, 20, 20 );
  //catch board initialized
  rect(mouseX, 595, 50, 5);

  fill(255);
  stroke(255);
  

  x = x + speedX;
  y = y + speedY;
  
  if(x > mouseX && x < mouseX + 50 && y > 590){
    fill(255, 0 , 0 );
    ellipse(x, y, 20, 20 );
    rect(mouseX, 595, 30, 5);
    background(255);
    speedX = speedX + 0.2;
    speedY = speedY + 0.2;
    println("speedX: " + speedX);
    println("speedY: " + speedY);
       
  }
  


  if(x > width || x < 0){
    speedX = speedX * -1;
    println("x: " + x);
    println("y: " + y);

  }  
  
  if(y > height || y < 0){
    speedY = speedY * -1;
    println("x: " + x);
    println("y: " + y);
  
  }
  
  if(mousePressed){
    ellipse(x1 , y1, 20, 20);
    x1 = mouseX + 25 ;
    x1 = x1 + speedX1 ;
    speedX1 = speedX1 + 5;

    y1 = y1 - speedY1;
    
   
  
  }
  if(y1 > height || y1 < 0){
    speedY1 = speedY1 * -1;
  }
  if(x1 > width || x1 < 0){
    speedX1 = speedX1 * -1;
  } 
  
  
  //Ball Release Setup
  if(ballRelease){
     ellipse(boardX, releaseY, 20, 20 );
     fill(255);
     stroke(255);
     boardX = mouseX + 25 + releaseSpeedX;
     releaseY = 595 + releaseSpeedY;
     releaseSpeedX =  3;
     releaseSpeedY =  4;
     
     if(boardX > width || boardX < 0){
       releaseSpeedX = releaseSpeedX * -1;
      
     }
    
  }
  if(mousePressed){
    ballRelease = ! ballRelease;
  }
  
}
