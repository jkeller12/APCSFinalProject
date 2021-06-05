// Boolean for selected piece
Board Chessboard; 
PImage[][] board;
boolean WHITE = false; 
boolean BLACK = true; 
Player p1 = new Player(false); 
Game game; 

void setup(){
  size(640,640);
  noStroke();
  textSize(width/8);
  textAlign(CENTER);
  game = new Game();  //<>//
  Chessboard = game.getBoard(); 
  Chessboard.getCell(0, 1).setPiece(new Pawn(WHITE));
  Chessboard.getCell(0, 0).setPiece(null);
  Cell c1 = Chessboard.getCell(0, 1); 
  Cell c2 = Chessboard.getCell(0, 0); 
  Move m = new Move(p1, c1, c2); 
  System.out.println(game.getCurrentTurn()); 
  game.ExecuteMove(game.getPlayers()[0], m); 
  start();
}
void start(){
  System.out.println("");
}
 //<>//
void draw(){
  drawBoard();
  
}

void drawBoard(){
  for(int i = 0; i <= 7; i++){
    for(int j = 0; j <= 7; j++){
      if((i + j)%2 == 0) fill(239,239,239);
      else fill(194,215,226);
  
      // Creates chess board;
      rect(j * width/8, i*height/8, width/8, height/8);
      if(!(Chessboard.getCell(j, i).getPiece() == null)){
        image(Chessboard.getCell(j,i).getPiece().getImage(), j*width/8, i*height/8);
      }
    }
  }
  if (game.getPromote() && game.getState() == GameState.ACTIVE){
    
    stroke(2);
    fill(200, 100);
    rect(0, 0, 2*width/8, height);
    rect(2*width/8, 0, 2*width/8, height);
    rect(4*width/8, 0, 2*width/8, height);
    rect(6*width/8, 0, 2*width/8, height);
    if (game.getCurrentTurn() == WHITE){
      image(Chessboard.getCell(7,3).getPiece().getImage(), 0.5*width/8, 3.5*height/8);
      image(Chessboard.getCell(7,7).getPiece().getImage(), 2.5*width/8, 3.5*height/8);
      image(Chessboard.getCell(7,2).getPiece().getImage(), 4.5*width/8, 3.5*height/8);
      image(Chessboard.getCell(7,1).getPiece().getImage(), 6.5*width/8, 3.5*height/8);
    } else {
      image(Chessboard.getCell(0,3).getPiece().getImage(), 0.5*width/8, 3.5*height/8);
      image(Chessboard.getCell(0,7).getPiece().getImage(), 2.5*width/8, 3.5*height/8);
      image(Chessboard.getCell(0,6).getPiece().getImage(), 4.5*width/8, 3.5*height/8);
      image(Chessboard.getCell(0,5).getPiece().getImage(), 6.5*width/8, 3.5*height/8);
    }
    noStroke();
  }
}
/*
void mousePressed(){
   if(game.isGameOver()) start();
   if(game.getPromote()){
     int x = round(mouseX/ (width/4)-0.5);
     Move LastMove = game.getMovesPlayed().get(game.getMovesPlayed().size()-1);
     Cell End = LastMove.getEnd(); 
     if (game.getCurrentTurn() == WHITE){
       if (x == 0) End.setPiece(new Queen(WHITE));
       if (x == 1) End.setPiece(new Rook(WHITE));
       if (x == 2) End.setPiece(new Bishop(WHITE));
       if (x == 3) End.setPiece(new Knight(WHITE));
    } 
    else if(game.getCurrentTurn() == BLACK){
      if (x == 0) End.setPiece(new Queen(BLACK));
      if (x == 1) End.setPiece(new Rook(BLACK));
      if (x == 2) End.setPiece(new Bishop(BLACK));
      if (x == 3) End.setPiece(new Knight(BLACK));
    }
   }
   game.setPromote(false); 
   
   // if (check) 
   
   // if(mate)
     
}*/
