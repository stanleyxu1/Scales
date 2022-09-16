void setup() {
  size(500, 500);  //feel free to change the size
  noLoop(); //stops the draw() function from repeating
 
}
  int colour1 = 0;

void draw() {
  boolean shift = true;
  for (int y = -50; y<=500; y+=30) {
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
  vertex (x+20, y+60);
  vertex(x+60, y+60);
  curveVertex(x+65, y+60);
  curveVertex(x+65, y+60);
  curveVertex(x+60, y+20);
  curveVertex(x+44, y+20);
  curveVertex(x+44, y+20);
  endShape(CLOSE);
  beginShape();
  curveVertex(x+45, y+20);
  curveVertex(x+45, y+20);
  curveVertex(x+30, y+20);
  curveVertex(x+20, y+60);
  curveVertex(x+20, y+60);
  endShape(CLOSE);
}
