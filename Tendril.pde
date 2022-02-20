class Tendril
{
  public final static int SEG_LENGTH = 4; //length of each segment in the tendril
  private int myNumSegments, myX, myY;
  private double myAngle;
  
  /**
   Class constructor
   len is how many segments in this tendril (each a fixed length, 4 is a good start)
   theta is tendril starting angle in radians 
   x, y  is the starting (x,y) coordinate
   */
  public Tendril(int len, double theta, int x, int y)
  {
    //your code here
    
    myNumSegments = len;
    myX = x;
    myY = y;
    myAngle = theta;
  }
  public void show()
  {
    //your code here
    
    if (myNumSegments > 15){
    stroke (0,0,0);
    } else if (myNumSegments > 4){
    stroke (255, 0, 0);
    } else {
    stroke (0, 0, 255);
    }
    
    int startX = myX;
    int startY = myY;
    
    for (int i = 0; i < myNumSegments; i++){
       myAngle += (double)((int)(Math.random()*5)-2)/10;
       int endX = startX + (int)(Math.cos(myAngle)*SEG_LENGTH);
       int endY = startY + (int)(Math.sin(myAngle)*SEG_LENGTH);
      line (startX, startY, endX,  endY);
      startX = endX;
      startY = endY;
      
    }
   
   if (myNumSegments >= 3){
     new Cluster (myNumSegments/3, startX, startY);
   }
  }
}

