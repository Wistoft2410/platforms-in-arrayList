final class Player {
  static final color INK = #008000, OUTLINE = 0;
  static final float BOLD = 2.0;

  boolean isLeft, isRight, isUp, isDown;
  int x, y;
  final int d, v;

  Player(final int xx, final int yy, final int dd, final int vv) {
    x = xx;
    y = yy;
    d = dd;
    v = vv;
  }

  void display() {
    fill(0,255,0);
    ellipse(x, y, d, d);
  }

  void move() {
    final int r = d >> 1;
    x = constrain(x + v*(int(isRight) - int(isLeft)), r, width  - r);
    y = constrain(y + v*(int(isDown)  - int(isUp)), r, height - r);
  }

  boolean setMove(final int k, final boolean b) {
    switch (k) {
    case +'W':
    case UP:
      return isUp = b;

    case +'S':
    case DOWN:
      return isDown = b;

    case +'A':
    case LEFT:
      return isLeft = b;

    case +'D':
    case RIGHT:
      return isRight = b;

    default:
      return b;
    }
  }
}
