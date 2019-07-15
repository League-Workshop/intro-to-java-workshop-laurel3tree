void setup(){
  size(1000,900);
  
}
void draw(){
 background(104,10,124);
  if(mousePressed){
  fill(random(10),random(124),random(87));
  }
  else{
    fill(0,0,255);
  }
  ellipse(mouseX,mouseY,50,50);
  fill(124,10,50);
triangle(340,340,340,70,70,40);
fill(#15C19D);
ellipse(100,100,150,150);
fill(#3B30ED);
rect(500,10,400,400);
fill(#F5B616);
rect(300,700,100,100);
fill(#F516EA);
triangle(250,250,250,100,850,730);
fill(#F79E0C);
triangle(850,730,300,200,200,200);
  

}
