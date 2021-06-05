// Boolean for selected piece
Board Chessboard; 
PImage[][] board;
Player p1 = new Player(false); 
Game game; 

void setup(){
  size(640,640);
  noStroke();
  textSize(width/8);
  textAlign(CENTER);
  game = new Game();  //<>//
  Chessboard = game.getBoard(); 
  p1 = game.getPlayers()[0]; 
  Cell c0 = Chessboard.getCell(0, 7); 
  Cell c1 = Chessboard.getCell(1, 7); 
  Cell c2 = Chessboard.getCell(2, 7); 
  Cell c3 = Chessboard.getCell(3, 7); 
  Cell c4 = Chessboard.getCell(4, 7); 
  c1.setPiece(null);
  c2.setPiece(null);
  c3.setPiece(null);

  Move move = new Move(p1, c4, c0); 
  
  System.out.println(move);
  System.out.println(c1.getPiece()); 
  System.out.println(c2.getPiece()); 
  
 // System.out.println(c1.getPiece().movable(Chessboard, c1, c2));
  System.out.println(game.ExecuteMove(p1,  move));
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
}
