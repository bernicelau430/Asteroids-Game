class Bullet extends Floater
{
  public Bullet (Spaceship theShip){
    myCenterX = theShip.getX();
    myCenterY = theShip.getY();
    myXspeed = theShip.getXspeed();
    myYspeed = theShip.getYspeed();
    myPointDirection = theShip.getPointDirection();
    accelerate(2);
  }
  public void show() {
    fill(235, 210, 52);
    ellipse((float)myCenterX, (float)myCenterY, 5, 5);
  }
  public void move() {
    myCenterX += myXspeed;
    myCenterY += myYspeed;
  }
  public double getX() {
    return myCenterX;
  }
  public double getY() {
    return myCenterY;
  }
}  
