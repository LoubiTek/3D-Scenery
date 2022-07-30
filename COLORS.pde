color BLACK = color(0);
color RED = color(255,0,0);
color GREEN = color(0,255,0);
color BLUE = color(0,0,255);
color WHITE = color(255);
float c = 0;

void HSB()
{
  c += .1;
  c = c%360;
}
