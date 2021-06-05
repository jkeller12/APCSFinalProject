// Boolean for selected piece
boolean click;
Board Chessboard; 
PImage[][] board;


void setup(){
  size(640,640);
  noStroke();
  textSize(width/8);
  textAlign(CENTER);
  //pawnImage = pawnB.getImage(); 
  Chessboard = new Board(); //<>//
 
  start();
}
void start(){
  //System.out.println(Chessboard.getCell(0,0));
  System.out.println("");
}
void drawBoard(){
  for(int i = 0; i <= 7; i++) for(int j = 0; j <= 7; j++){
    // i is y-cord
    // j i
    // Paint White Squares
    if((i + j)%2 == 0) fill(239,239,239);
    else fill(194,215,226);

    // Creates chess board;
    rect(j * width/8, i*height/8, width/8, height/8);
    if(!(Chessboard.getCell(j, i).getPiece() == null)) image(Chessboard.getCell(j,i).getPiece().getImage(), j*width/8, i*height/8);
    
  } //<>//
}
void draw(){
  drawBoard();
}


 //   
