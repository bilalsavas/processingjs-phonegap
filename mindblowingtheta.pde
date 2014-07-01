float theta=0, sz=300, x, y;
int num=20;
 
void setup() {
  size(window.innerWidth,window.innerHeight, P2D);
  noFill();
  stroke(255);
  smooth(8);
  background(0);
  strokeWeight(2);
  x = width/2;
  y = height/2;
  frameRate(30);
  textFont(createFont("Helvetica",32));
}
 
void draw() {	
	noFill();
  background(0);
  pushMatrix();
  translate(x, y);
  for (int i=0; i<num; i++) {
    rotate(theta);
    stroke(255);
    arc(0, 0, sz-i*10, sz-i*10, 0, PI);
  }
  popMatrix();
}

void touchMove(TouchEvent touchEvent) {
noStroke();
  for (int i = 0; i < touchEvent.touches.length; i++) {
  	fill(255,0,0);
  	rect(10 + i * 12, 10,10,10);
  	  theta += 0.0523/5;
  }
  text("FPS: " + frameRate, 50, 50);
}