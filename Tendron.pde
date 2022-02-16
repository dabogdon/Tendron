public int R = (int)(Math.random()*50)+30;
public int G = (int)(Math.random()*100)+50;
public int B = (int)(Math.random()*75)+80;
public void setup() {
  size(500, 500);  
  background(255);
  noLoop();
}

public void draw() {
  background(50);
  Cluster c = new Cluster(50, 250, 250, R, G, B, 5);// initial number of segments in the tendril and starting (x,y) coordinate
  R = (int)(Math.random()*50)+30;
  G = (int)(Math.random()*100)+50;
  B = (int)(Math.random()*75)+80;
}
public void mousePressed() {
  redraw();
}
