void setup() {
  size(500, 500);  //feel free to change the size
  noLoop(); //stops the draw() function from repeating
 
}

 void draw() {
  boolean shift = true;
  for (int y = -50; y<=500; y+=20) {
    for (int x=-50; x<=500; x+=45) {
      if (shift == true) {
        scale(x+15, y);
      } else {
        scale(x, y);
      }
    }
    if (shift ==true)
      shift = false;
    else
      shift= true;
  }
}



void scale(int x, int y) {
  beginShape();
  fill(0, (int)(Math.random()*170), 30);
      noStroke();
   curveVertex (x+20, y+60);
   curveVertex (x+20, y+60);
   curveVertex(x+60, y+60);
   curveVertex(x+60, y+60);
   curveVertex(x+50, y+20);
   curveVertex(x+40, y+20);
   curveVertex(x+40, y+20);
   endShape(CLOSE);
 beginShape();
   curveVertex(x+20, y+65);
   curveVertex(x+20, y+65);
   curveVertex(x+30, y+20);
   curveVertex(x+40, y+20);
   curveVertex(x+40, y+20);
 endShape(CLOSE);

}

