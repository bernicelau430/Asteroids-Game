Spaceship bob = new Spaceship();
Star[] nightSky = new Star[200];
ArrayList <Asteroid> kitty = new ArrayList <Asteroid>();
ArrayList <Bullet> shots = new ArrayList <Bullet>();
public void setup() 
{
  size(500, 500);
  for (int i = 0; i < nightSky.length; i++) {
    nightSky[i] = new Star();
  }
  for (int i = 0; i < 15; i++) {
    kitty.add(new Asteroid());
  }
}
public void draw() 
{
  background(0);
  for (int i = 0; i < nightSky.length; i++){
    nightSky[i].show();
  }
  for (int i = 0; i < kitty.size(); i++) {
    kitty.get(i).show();
    kitty.get(i).move();
    if (dist((float)bob.getX(), (float)bob.getY(), (float)kitty.get(i).getX(), (float)kitty.get(i).getY()) < 20) {
      kitty.remove(i);
      break;
    }
  }
  for (int i = 0; i < shots.size(); i++) {
    shots.get(i).show();
    shots.get(i).move();
    if (shots.get(i).getX() > 500 || shots.get(i).getX() < 0) {
      shots.remove(i);
      break;
    }
    if (shots.get(i).getY() > 500 || shots.get(i).getY() < 0) {
      shots.remove(i);
      break;
    }
    for (int s = 0; s < kitty.size(); s++) {
      if (dist((float)shots.get(i).getX(), (float)shots.get(i).getY(), (float)kitty.get(s).getX(), (float)kitty.get(s).getY()) < 20) {
      kitty.remove(s);
      shots.remove(i);
      break;
      }
    }
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
  else if (key == ' '){
    shots.add(new Bullet(bob));
  }
}
