void LIGHTS()
{
  if (!mousePressed)
  {
    lights();
  }
  directionalLight(126, 126, 126, 0, 0, -1);
  ambientLight(c, c, c);
  lightFalloff(1.0, 0.001, 0.0);
  pointLight(150, 250, 150, 50, 50, 50);
  spotLight(51, 102, 126, 80, 20, 40, -1, 0, 0, PI/2, 2);
  lightSpecular(204, 204, 204);
  specular(51, 51, 51);
}
