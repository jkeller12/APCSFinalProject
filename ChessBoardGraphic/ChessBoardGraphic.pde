final int WIDTH = 500;
final int HEIGHT = 500;
final int BLOCKX = WIDTH / 8;
final int BLOCKY = HEIGHT / 8;
 
void setup() {
  size(500, 500);
  noLoop(); 
}
 
void draw() {
  for (int i = 0; i < 8; i ++) {
    for (int j = 0; j < 8; j ++) {
      if ((i + j + 1) % 2 == 0) {
        fill(255, 255, 255); // white
      } else {
        fill(0, 0, 0); // black
      }
      rect(i * BLOCKX, j * BLOCKY, (i + 1) * BLOCKX, (j + 1) * BLOCKY);     
    } 
  }
}
