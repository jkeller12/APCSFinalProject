
PImage wP, bP, wR, bR, wKn, bKn, wB, bB, wK, bK, wQ, bQ;
PImage[][] board;
// Booleans for Casteling
boolean wKm, bKm, wRm0, wRm1, bRm0, bRm1;

// Boolean for Game Condition 
boolean game_finished;
boolean check; 
boolean promotion;

// Boolean for Turn
boolean turn; // False -> black, True -> white
boolean WHITE = true; 
boolean BLACK = false; 
// Integers for Piece position
int Xi,Yi, Xf, Yf; // (Xi, Yi) -> starting pos. (Xf, Yf) --> ending pos. 

// Boolean for selected piece
boolean click; 
void setup(){
  size(640,640); 
  noStroke();
  textSize(width/8);
  textAlign(CENTER);
  
  
  // Loading Images of Pieces
  wP = loadImage("WhitePawn.png");
  bP = loadImage("BlackPawn.png");
  wR = loadImage("WhiteRook.png");
  bR = loadImage("BlackRook.png");
  wKn = loadImage("WhiteKnight.png");
  bKn = loadImage("BlackKnight.png");
  wB = loadImage("WhiteBishop.png");
  bB = loadImage("BlackBishop.png");
  wK = loadImage("WhiteKing.png");
  bK = loadImage("BlackKing.png");
  wQ = loadImage("WhiteQueen.png");
  bQ = loadImage("BlackQueen.png");
  
  // Reszing images of pieces to fit squares
  
  wP.resize(width/8,height/8);
  wR.resize(width/8,height/8);
  wKn.resize(width/8,height/8);
  wB.resize(width/8,height/8);
  wK.resize(width/8,height/8);
  wQ.resize(width/8,height/8);
  
  bP.resize(width/8,height/8);
  bR.resize(width/8,height/8);
  bKn.resize(width/8,height/8);
  bB.resize(width/8,height/8);
  bK.resize(width/8,height/8);
  bQ.resize(width/8,height/8);
  
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
    
    if(board[j][i] != null) image(board[j][i], i*width/8, j*height/8); 
    
    //if(click) if
  
  }
  
}
void draw(){
  drawBoard();
  if(game_finished){
    fill(0, 255, 0);
    if(check) text("Game Over: Checkmate", 0, height/2, width, height);
    else text("Game Over: Stalemate", 0, height/2, width, height); 
  }
}
void start(){
 board = new PImage[8][8];
 
 // Pawns
 for(int i = 0; i < 8; i++){
   board[1][i] = bP;
   board[6][i] = wP; 
 }
 // Rooks
 board[0][0] = bR; 
 board[0][7] = bR;
 board[7][0] = wR; 
 board[7][7] = wR; 
 
 // Knights
 board[0][1] = bKn; 
 board[0][6] = bKn; 
 board[7][1] = wKn; 
 board[7][6] = wKn; 
 
 // Bishops 
 
 board[0][2] = bB; 
 board[0][5] = bB; 
 board[7][2] = wB; 
 board[7][5] = wB; 
 
 // King & Queen
 
 board[0][3] = bQ; 
 board[0][4] = bK; 
 board[7][3] = wQ; 
 board[7][4] = wK; 
 
 // Set Global vraibles
 
 game_finished = false; 
 check = false;
 click = false; 
 turn = WHITE;
 promotion = false; 
 wKm = false; 
 bKm = false; 
 wRm0 = false; // Col 0 Rook
 wRm1 = false; // Col 7 Rook
 bRm0 = false; // Col 0 Rook
 bRm1 = false; // Col 7 Rook
}

boolean Possible_Move(int yi, int xi, int yf, int xf, boolean Turn, PImage[][] Board){
  if(Turn == WHITE){
    
    // White Pawn Moves
    if(Board[yi][xi] == wP && !promotion){ 
      // Pawn foward 1
      if(yf = yi -1 && xf = xi && Board[yf][xf] == null) return true; 
      // Pawn's first move, foward 2
      else if(xi = xf && yf == yi-2 && yi == 6 && Board[yf][xf] == null && Board[yf+1][xf] == null) return true; 
      
      // Capture Right
      if(xi != 7){
        if(isBlack(yi-1, xi+1, Board)) if(yi-1 == yf && xi+1 == xf) return true; 
      }
      // Capture Left
      if(xi != 0){
        if(isBlack(yi-1, xi-1, Board)) if(yi-1 == yf && xi-1 == xf) return true; 
      }
    }
    
    // White King Moves
    else if(Board[yi][xi] == wK) {
  }
  return false; 
}
boolean isBlack(int x, int y, PImage[][] Board){
  PImage P = Board[x][y]; 
  return (P == bP ||P == bR || P == bKn || P == bB || P == bK || P == bQ);
}
boolean isWhite(int x, int y, PImage[][] Board){
  PImage P = Board[x][y]; 
  return (P == wP ||P == wR || P == wKn || P == wB || P == wK || P == wQ);
}
