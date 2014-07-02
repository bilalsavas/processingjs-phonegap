float theta=0, sz=300, x, y;
int num=5;
 
void setup() {
  size(window.innerWidth,window.innerHeight);
  noFill();
  stroke(255);
  smooth(8);
  background(0);
  strokeWeight(2);
  x = width/2;
  y = height/2;
  frameRate(50);
  textFont(createFont("Helvetica",16));
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
  noStroke();
  	fill(255,0,0);
  	ellipse(20 + i * 12, 20,10,10);
  	  theta += 0.0523/5;
  }
  
  if (touchEvent.touches.length>=1)
  {
  	num = int(map(touchEvent.touches[0].offsetY,0,height,0,40));
  }
  text("FPS: " + frameRate, 16, 50);
}