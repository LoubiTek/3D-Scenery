import peasy.PeasyCam;
PeasyCam cam;

import queasycam.*;
QueasyCam cam_;

PShape Terrain01;

void settings()
{
  size(W,H,ENGINE);
  smooth(AA);
}

void setup()
{
  background(BLACK);
  frameRate(FPS);
  colorMode(HSB,360,100,100);
  
  cam = new PeasyCam(this, 400);
  cam_ = new QueasyCam(this);
  minim = new Minim(this);
  player = minim.loadFile("Sombre_Ombre.mp3");
  player.play();
  textureMode(NORMAL); 
  bg = loadImage("bg.png");
  sky_bk = loadImage("sky_bk.bmp");
  sky_dn = loadImage("sky_dn.bmp");
  sky_ft = loadImage("sky_ft.bmp");
  sky_lf = loadImage("sky_lf.bmp");
  sky_rt = loadImage("sky_rt.bmp");
  sky_up = loadImage("sky_up.bmp");
  Terrain01 = loadShape("Terrain01.obj");
}

void draw()
{
  A();
}
