class Asteroid extends Floater
{
  private int rotSpeed = (int)((Math.random()*20)-10);
  public Asteroid() {
    corners = 6;
    xCorners = new int[] {-11, 7, 13, 6, -11, -5};
    yCorners = new int[] {-8, -8, 0, 10, 8, 0};
    myColor = color(0, 0, 255);
    myCenterX = (int)(Math.random()*500);
    myCenterY = (int)(Math.random()*500);
    myXspeed = (int)((Math.random()*6)-3);
    myYspeed = (int)((Math.random()*6)-3);
    myPointDirection = (int)(Math.random()*360);
  }
  public void move() {
    turn(rotSpeed);
    super.move();
  }
  public double getX() {
    return myCenterX;
  }
  public double getY() {
    return myCenterY;
  }
}
