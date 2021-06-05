// Boolean for selected piece
boolean click;

Board Chessboard; 
Pawn pawnB;
Pawn pawnW;
PImage pawnImage; 
PImage[][] board;


void setup(){
  size(640,640);
  noStroke();
  textSize(width/8);
  textAlign(CENTER);
  
  pawnB = new Pawn(true);  //<>//
  pawnImage = pawnB.getImage(); 
  Chessboard = new Board();
  
  start();
}
void start(){
  System.out.println(Chessboard.getCell(0,0));
}
void drawBoard(){
  for(int i = 0; i <= 7; i++) for(int j = 0; j <= 7; j++){
    // Paint White Squares
    if((i + j)%2 == 0) fill(194,215,226);
    else fill(239,239,239);

    // Creates chess board;
    rect(i * width/8, j*height/8, width/8, height/8);
    //image (board[0][0], i*width/8, j*height/8);
  }
}
void draw(){
  drawBoard();
}
