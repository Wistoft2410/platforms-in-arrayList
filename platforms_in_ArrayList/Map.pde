class Map {
  PImage platform;

  PVector location;
  PVector velocity;
  PVector acceleration;


  Map() {
    location = new PVector(mouseX, mouseY);
    velocity = new PVector(1, 0);
    
  }

  void update() {
    location.add(velocity);
  }


  void display() {
    noStroke();
    fill(255);
    rect(location.x, location.y, 300,50);
  }
}
