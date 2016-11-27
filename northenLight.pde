/* 
NorthernLight, 
2015 Robert Schnüll - http://interaktives.design
*/
float c = 0;
float c2 = 0;
int s = 10;
int co = 0;
float pos[][][][] = new float[3025][2][2][2];

void setup() {
  size(1920, 1080, P3D);
  stroke(255, 10);
  strokeWeight(1);
  background(0);
}

void draw() {
  stroke(255, 10);
  strokeWeight(1);
  pushMatrix();
  translate(width/2, height/2);
  rotate(PI/4);
  translate(-500, -500, -500);
  for ( int i = 0; i < 110; i++) {
    int j;
    for ( j = 0; j < 110; j++) {
      if (i % 2 == 0 && j % 2 == 0  ) {
        float x = noise(i/100, c);
        float y = noise(j/100, c);

        line(c2*1*s, y*1*s, noise(i, x*1)*100*s, 
          noise(j, x*1)*100*s, noise(j, y*1)*100*s, noise(c, c2*1)*100*s);
      }
    }
    j = int( noise(i)*100);
  }
  co = 0;
  c += 0.01;
  c2 = noise(c);
  fill(0, 10);
  noStroke();
  popMatrix();
  rect(0, 0, width, height);
}