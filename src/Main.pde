//Cormac Stone
gun myGun;
float xpos, ypos;
int nfloor;
float xmovement, ymovement;
boolean r, l, u, d;
boolean hasClicked = false;
void setup() {
  size(600, 600);
  //fullScreen();
  xpos = 300;
  ypos = 300;
  nfloor = 1000;
  myGun = new gun();
}

void draw() {
  background(150);
  physics();
  rectMode(CENTER);
  square(xpos, ypos, 50);
  stroke(255, 0, 0);
  line(xpos, ypos, mouseX, mouseY);
  noStroke();

  myGun.display();
}


void keyPressed() {
  if (keyCode == 37 || key == 'a') {
    l = true;
  }
  if (keyCode == 39 || key == 'd') {
    r = true;
  }
  if (keyCode == 38 || key == 'w') {
    u = true;
  }
  if (keyCode == 40 || key == 's') {
    d = true;
  }
}

void physics() {
  gravity();
  xpos += xmovement;
  ypos += ymovement;

  if (r == false) {
    xmovement = 0;
  } else if (l == false) {
    xmovement = 0;
  }

  if (r == true && l == true) {
    xmovement = 0;
  } else if (l == true) {
    xmovement = -3;
  } else if (r == true) {
    xmovement  = 3;
  } else {
    xmovement = 0;
    ymovement = 0;
  }

  if (d == true && u == true) {
    ymovement = 0;
  } else if (d == true) {
    ymovement = 2;
  } else if (u == true) {
    ymovement = -2;
  }
}

void gravity() {
  if (ypos < nfloor && u == false) {
    //ymovement += 0.5;
  }
}

void keyReleased() {
  if (keyCode == 37 || key == 'a') {
    l = false;
  }
  if (keyCode == 39 || key == 'd') {
    r = false;
  }
  if (keyCode == 38 || key == 'w') {
    u = false;
  }
  if (keyCode == 40 || key == 's') {
    d = false;
  }
}
void mousePressed() {
  if (!hasClicked && myGun != null) {
    myGun.mousePressed(xpos, ypos, mouseX, mouseY);
    hasClicked = true;
  }
}

void mouseReleased() {
  hasClicked = false;
}
