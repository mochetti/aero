PShape aviao;

void setup() {
  size(640, 640, P3D);
  aviao();
}

void draw() {
  translate(width/2, height/2);
  shape(aviao);
}

// cria o modelo em 3d do aviao
void aviao() {
  
  // medidas
  // comprimento do corpo
  int cc = 50;
  // largura do corpo
  int lc = 10;
  // comprimento da asa
  int ca = 50;
  // largura da asa
  int la = 10;
  
  
  aviao = createShape();
  aviao.beginShape();
  aviao.fill(0);
  aviao.stroke(255);
  aviao.strokeWeight(2);
  
  aviao.vertex(-lc/2, -cc/2, 0);
  aviao.vertex(lc/2, -cc/2, 0);
  aviao.vertex(lc/2, cc/2, 0);
  aviao.vertex(-lc/2, cc/2, 0);
  
  aviao.endShape(CLOSE);
}
