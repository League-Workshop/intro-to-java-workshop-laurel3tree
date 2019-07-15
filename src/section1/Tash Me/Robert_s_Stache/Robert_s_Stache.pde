PImage stache;
 PImage robert;
void setup(){
  robert = loadImage("robert.jpeg");
   size(883, 1176);
   robert.resize(width,height);
  stache = loadImage("stache.png");
  
  }
void draw(){
  background(robert);
  if(mousePressed){
  image(stache,mouseX-400,mouseY-250);
  }

}
