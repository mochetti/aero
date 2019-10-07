PShape boom;
PShape aile1;
PShape aile2;


void setup() {
  size(640, 640, P3D);
  boom();
}

void draw() {
  //rect(0,0,width, height);
  translate(width/2, height/2);
  shape(boom);
  translate(width/100, height/200);
  shape(aile1);
}

// cria o modelo em 3d do boom
void boom() {
  
  // medidas
  // comprimento do corpo
  int cc = 200;
  // largura do corpo
  int lc = 30;
  // comprimento da asa
  int ca = 200;
  // largura da asa
  int la = 40;
  
  
  boom = createShape();
  boom.beginShape();
  boom.fill(0);
  boom.stroke(255);
  boom.strokeWeight(2);
  
  boom.vertex(-lc/2, -2*cc, 0);
  boom.vertex(lc/2, -2*cc, 0);
  boom.vertex(lc/2, cc, 0);
  boom.vertex(-lc/2, cc, 0);
  
  boom.endShape(CLOSE);
  
  aile1 = createShape();
  aile1.beginShape();
  aile1.fill(0);
  aile1.stroke(255);
  aile1.strokeWeight(2);
  
  aile1.vertex(ca/200, cc/2, 0);
  aile1.vertex(ca*2.5, cc/2, 0);
  aile1.vertex(ca*2.5, cc/8, 0);
  aile1.vertex(ca*1.5, -cc/5, 0);
  aile1.vertex(ca/200, -cc/5, 0);

  
  aile1.endShape(CLOSE);
  
  
}
