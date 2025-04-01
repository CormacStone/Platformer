//Cormac Stone
float xpos, ypos;
int nfloor;
float xmovement, ymovement;
boolean r, l, u, d;

void setup() {
  size(600, 600);
  fullScreen();
  xpos = 300;
  ypos = 300;
  nfloor = 1000;
}

void draw() {
  background(150);
  physics();
  square(xpos, ypos, 50);
  frameRate(120);
  //gun.display();
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
