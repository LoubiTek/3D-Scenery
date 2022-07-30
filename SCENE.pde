PVector P = new PVector(0,0,0);
float a = 0;
float PHI = sqrt((1)+5/2);

float L = -FPS/2;
float R = 0;
float B = 0;
float T = FPS*PHI;
float N = FPS;
float F = 10000;

float FOV = 150;
float ASPECT = (W/2-H/2);
float ZN = 0;
float ZF = F/FOV;

float RX = 0;
float RY = 0;
float RZ = 0;

void A()
{
  background(bg);
  translate(W/2,H/2);
  scale(1);
  LIGHTS();
  CAMERA();
  HSB();
  
  P.x += ceil(sin(.1*AA));
  P.y += floor(cos(.1*FPS));
  P.z += round(log(.1*PHI));
  
  a += .00314;
  rotate(a);
  
  for(float i=-1; i<=1; i++)
  {
    for(float j=-1; j<=1; j++)
    {
      for(float k=-1; k<=1; k++)
      {
        pushMatrix();
        rotateX(radians(a));
        strokeWeight(1);
        stroke(c,c,c);
        noFill();
        box(W-H);
        SKYBOX();
        popMatrix();
      }
    }
  }
  scale(AA*PHI);
  RX = PI;
  RY = 80;
  RZ = TWO_PI;
  rotateX(RX);
  rotateY(RY);
  rotateZ(RZ);
  shape(Terrain01,0,0);
  if(a>=c)
  {a=-c;}
  if(P.x>=W/2)
  {P.x=-W/2;} 
  if(P.y>=H/2)
  {P.y=-H/2;}
  if(P.z<=-W*HALF_PI-H*HALF_PI)
  {P.z=W*HALF_PI+H*HALF_PI;}
  if(PHI>=FPS*AA)
  {PHI=sqrt((1)+5/2);}
}
