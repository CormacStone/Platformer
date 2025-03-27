//Cormac Stone

int xpos, ypos;
int nfloor;
int xmovement, ymovement;
int code;
boolean r, l, u, d;
void setup() {
  size(600, 600);
  fullScreen();
  xpos = 300;
  ypos = 300;
  nfloor = 550;
  xmovement = 0;
}

void draw() {
  background(150);
  grav();
  square(xpos, ypos, 50);
  frameRate(120);
}

void grav() {
  if (ypos < nfloor) {
    //ymovement = 2;
  } else {
    //ymovement = 0;
  }
  xpos += xmovement;
  ypos += ymovement;

  if (keyCode == 39) {
    r = true;
  } else if (keyCode == 37) {
    l = true;
  } 
  
  if (keyPressed == false){
    
  }
  if (r == true) {
    xmovement = 3;
  } else if ( l == true) {
    xmovement = -3;
  } else if (l == true && r == true){
    xmovement  = 0;
  }
}
void keyReleased(){
  
}
