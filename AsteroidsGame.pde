Spaceship bob = new Spaceship();
Star[] nightSky = new Star[200];
public void setup() 
{
  size(500, 500);
  for (int i = 0; i < nightSky.length; i++) {
      nightSky[i] = new Star();
  }
}
public void draw() 
{
  background(0);
  for (int i = 0; i < nightSky.length; i++){
    nightSky[i].show();
  }
  bob.show();
  bob.move();
}
public void keyPressed() {
  if (key == 'h'){
    bob.setCenterX((int)(Math.random()*500));
    bob.setCenterY((int)(Math.random()*500));
    bob.setXspeed(0);
    bob.setYspeed(0);
    bob.setPointDirection((int)(Math.random()*361));
  }
  else if (key == 'w'){
    bob.accelerate(0.1);
  }
  else if (key == 's'){
    bob.accelerate(-0.1);
  }
  else if (key == 'a'){
    bob.turn(-10);
  }
  else if (key == 'd'){
    bob.turn(10);
  }
}
