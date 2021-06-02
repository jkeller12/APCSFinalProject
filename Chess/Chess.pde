
PImage wP, bP, wR, bR, wKn, bKn, wB, bB, wK, bK, wQ, bQ;
PImage[][] board;


// Boolean for selected piece
boolean click;
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

    if(board[j][i] != null) image(board[j][i], i*width/8, j*height/8);

    //if(click) if

  }

}
void draw(){
  drawBoard();
  if(Game.getState() != ACTIVE ){
    fill(0, 255, 0);
    if(Game.getState() == WHITE_WIN) text("Game Over: White Wins", 0, height/2, width, height);
    else if(Game.getState() == BLACK_WIN) text("Game Over: Black Wins", 0, height/2, width, height);
    else if(Game.getState() == FORFEIT) text("Game Over: Forfeit", 0, height/2, width, height);
    else if(Game.getState() == RESIGNATION) text("Game Over: RESIGNATION", 0, height/2, width, height);
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
      if(yf == yi -1 && xf == xi && Board[yf][xf] == null) return true;
      // Pawn's first move, foward 2
      else if(xi == xf && yf == yi-2 && yi == 6 && Board[yf][xf] == null && Board[yf+1][xf] == null) return true;

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
      // 1 Square Move
      if(abs(xf-xi) <=1 && abs(yf-yi) <= 1) if(isBlack(yf,xf,Board) || Board[yf][xf] == null) return true;
      // Castle
      if(!wKm && !check){
        if(Board[7][5] == null && board[7][6] == null && yf == 7 && xf ==6 && !wRm1) if(!incheck(yi, xi, 7, 5, turn)) return true;
        if(Board[7][3] == null && board[7][2] == null && board[7][1] == null && yf == 7 && xf == 2 && !wRm0) if(!incheck(yi, xi, 7, 3, turn)) return true;
      }
    }
  }
  return false;
}
boolean incheck(int yi, int xi, int yf, int xf, boolean Turn){
  PImage[][] Board1 = new PImage[8][8];
  for(int i = 0; i <= 7; i++) for(int j = 0; j <= 8; j++) Board1[i][j] = board[i][j];
  Board1 = move(yi, xi,yf,xf, BLACK, Board1);
  return false;
}

PImage[][] move(int yi, int xi, int yf, int xf, boolean B, PImage[][] Board){
  if(B){
   Xi = xi;
   Xf = xf;
   Yi = yi;
   Yf = yf;
  }

  // White Pawn promotion
  if(Board[yi][xi] == wP) if( yf == 0) if(B) promotion = true;

  // Black Pawn promotion
  else if(Board[yi][xi] == bP) if( yf == 7) if(B) promotion = true;

  // White King Move
  else if(Board[yi][xi] == wK){
    if(wKm == false && xf == 6){
      Board[7][7] = null;
      Board[7][5] = wR;
    }
    if(wKm == false && xf == 2){
     Board[7][0] = null;
     Board[7][3] = wR;
    }
    if(B) wKm = B;
  }

  // Black King Move

  return Board;
}

boolean isBlack(int y, int x, PImage[][] Board){
  PImage P = Board[y][x];
  return (P == bP ||P == bR || P == bKn || P == bB || P == bK || P == bQ);
}
boolean isWhite(int y, int x, PImage[][] Board){
  PImage P = Board[y][x];
  return (P == wP ||P == wR || P == wKn || P == wB || P == wK || P == wQ);
}
