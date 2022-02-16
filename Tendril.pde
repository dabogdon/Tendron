class Tendril {
  public final static int SEG_LENGTH = 5; //length of each segment in the tendril
  private int myNumSegments, myX, myY, myR, myG, myB, mySize;
  private float myAngle;

  /**
   Class constructor
   len is how many segments in this tendril (each a fixed length, 4 is a good start)
   theta is tendril starting angle in radians 
   x, y  is the starting (x,y) coordinate
   */
  public Tendril(int len, double theta, int x, int y, int r, int g, int b, int siz) {
    myNumSegments=len;
    myX=x;
    myY=y;
    myR=r;
    myG=g;
    myB=b;
    mySize=siz;
    myAngle=(float)theta;
    stroke(myR, myG, myB);
    strokeWeight(mySize);
  }

  public void show() {
    float startX=myX;
    float startY=myY;
    float endX=startX+(float)(Math.cos(myAngle)*SEG_LENGTH);
    float endY=startY+(float)(Math.sin(myAngle)*SEG_LENGTH);
    for (int i=0; i<=myNumSegments; i++) {
      line(startX, startY, endX, endY);
      startX=endX;
      startY=endY;
      myAngle+=(float)(Math.random()*0.5)-0.2;
      endX=startX+(float)(Math.cos(myAngle)*SEG_LENGTH);
      endY=startY+(float)(Math.sin(myAngle)*SEG_LENGTH);
    }
    if (myNumSegments>SEG_LENGTH) {
      Cluster j=new Cluster(myNumSegments/5, (int)endX, (int)endY, myR, myG/3, myB/2, mySize-1);
    }
  }
}
