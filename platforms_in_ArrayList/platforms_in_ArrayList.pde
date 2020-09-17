static final int DIAM = 80, SPD = 4, FPS = 60;
static final color BG = 0350;

ArrayList<Map> m;
Player p;

void setup() {
  size(800, 800);
  background(BG);

  m = new ArrayList<Map>();
  p = new Player(width, height, DIAM, SPD);



  smooth(3);
  frameRate(FPS);
  ellipseMode(CENTER);

  fill(Player.INK);
  stroke(Player.OUTLINE);
  strokeWeight(Player.BOLD);
}

void draw() {
  clear();
  p.move();
  p.display();

  for (Map m : m) {
      m.display();  
      m.update(); 
      
  }
}

void mouseClicked() {
  for (int i=0; i < 2; i++)
  m.add(new Map()); //float tempMass, int tempX, int tempY, float tempR
}

void keyPressed() {
  p.setMove(keyCode, true);
}

void keyReleased() {
  p.setMove(keyCode, false);
}
