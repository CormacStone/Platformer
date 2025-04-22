class gun {
  float vel;
  float mouseD;

  void display() {
    // No println here anymore — draw visuals if needed, but no print spam
  }

  void mousePressed(float xpos, float ypos, float mouseX, float mouseY) {
    mouseD = dist(xpos, ypos, mouseX, mouseY);
    println("Distance:" + nf(mouseD, 1, 2));
    vel = mouseD + 2;
  }
}
