int dimensions = 800;
Game game;

void setup(){
  size(800,800);
  noStroke();
  game = new Game();  //<>//

}

 //<>//
void draw(){
  game.draw();

}

void mousePressed(){
  game.mouseClicked();
}
