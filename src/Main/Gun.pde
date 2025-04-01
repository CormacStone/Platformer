//Cormac Stone
class gun {

  float mouseD;
  void display() {
    System.out.println(mouseD);
  }
  void mousePressed() {
    mouseD = dist(xpos,ypos,mouseX,mouseY);
    System.out.println(mouseD);
  }
}
