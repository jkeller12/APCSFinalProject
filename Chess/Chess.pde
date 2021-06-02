// Boolean for selected piece
boolean click;
//Board board = new Board();  
void setup(){
  size(640,640);
  noStroke();
  textSize(width/8);
  textAlign(CENTER);

  start();
}

void drawBoard(){
  for(int i = 0; i <= 7; i++) for(int j = 0; j <= 7; j++){
    // Paint White Squares
    if((i + j)%2 == 0) fill(194,215,226);
    else fill(239,239,239);

    // Creates chess board;
    rect(i * width/8, j*height/8, width/8, height/8);

    // Places pieces

   //if(board.getCell(j, i).getPiece() != null) image(board.getGraphicBoard()[j][i], i*width/8, j*height/8);

    // Highlighting?

  }

}
void draw(){
  drawBoard();
  /*
  if(Game.getState() != ACTIVE ){
    fill(0, 255, 0);
    if(Game.getState() == WHITE_WIN) text("Game Over: White Wins", 0, height/2, width, height);
    else if(Game.getState() == BLACK_WIN) text("Game Over: Black Wins", 0, height/2, width, height);
    else if(Game.getState() == FORFEIT) text("Game Over: Forfeit", 0, height/2, width, height);
    else if(Game.getState() == RESIGNATION) text("Game Over: RESIGNATION", 0, height/2, width, height);
    else text("Game Over: Stalemate", 0, height/2, width, height);
  }*/
}
void start(){
 //Game.init();

}
