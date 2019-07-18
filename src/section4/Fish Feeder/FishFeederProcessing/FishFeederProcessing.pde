int foodX = 100;
int foodY = 20;
int score = 0;
int speed = 1;
int fishX = width-100;
boolean launched = false;
void setup(){
  size(1000,900);
  
}

void draw(){
  background(141,233,237);
  fill(22,27,245);
noStroke();
ellipse(foodX, foodY, 10, 10);
foodY = foodY+speed;
if(foodY>=900){
  foodX = (int) random(width-20);
  foodY = 20;
}
drawFish();
checkCatch(foodX, foodY);
fill(0, 0, 0);
textSize(16);
text("Score: " + score, 20, 20);
if(score>=10){
  foodX = 1000;
  foodY = 1000;
  text("You Won!", 400, 400);
}

}

void drawFish(){
     noStroke();
     fill(255,255,255);
     ellipse(fishX-17,mouseY-17,20,20); //back side eye
     fill(255,200,88);
     ellipse(fishX,mouseY,90+score*4,50+score*4); //body
     triangle(fishX+30,mouseY,fishX+70,mouseY+30,fishX+70,mouseY-30); //tail
     stroke(0);
     triangle(fishX,mouseY,fishX+15,mouseY+10,fishX+15,mouseY-10); //side fin
     noStroke();
     fill(255,200,88);
     ellipse(fishX,mouseY,15,15); //side fin cover
     noStroke();
     fill(255,255,255);
     ellipse(fishX-25,mouseY-15,20,20); //front eye
     fill(0,0,0);
     ellipse(fishX-25,mouseY-15,5,5); //pupil
     fill(141,233,237);
     ellipse(fishX-45,mouseY,25,25); //mouth
}

void checkCatch(int x, int y){
     if(x > fishX && x < fishX+70){
          if(y > mouseY-17 && y < mouseY+30){
               score++;
               speed++;
               foodY = 20; //if the food was eaten, make more food fall from the top
               foodX = (int) random(width-20);
          }
     }
     else if (foodY > height && score > 0){
          score--;
     }
}
