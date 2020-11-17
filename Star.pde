class Star //note that this class does NOT extend Floater
{
  int speedX, speedY, myColor;
  private int myX, myY;
  public Star(){
    myX = (int)(Math.random()*500);
    myY = (int)(Math.random()*500);
    speedX = (int)(Math.random()*5 - 2.5);
    speedY = (int)(Math.random()*5 - 2.5);
    myColor = color((int)(Math.random()*256), (int)(Math.random()*256), (int)(Math.random()*256), 98);
  }
  public void show(){
    noStroke();
    fill(myColor);
    ellipse(myX, myY, 3, 3);
  }
  public void move(){
     myX = speedX + myX;
     myY = speedY + myY;
     if (myX > 500) {
       myX = 0;
     }
     else if (myY > 500) {
       myY = 0;
     }
     else if (myX < 0) {
       myX = 500;
     }
     else if (myY < 0) {
       myY = 500;
     }
  }
}
