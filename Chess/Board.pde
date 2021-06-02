public class Board{
  boolean WHITE = false; 
  boolean BLACK = true; 
  private Cell[][] board; 
   
  public Board(){
   this.init();
  }
  
  public Cell getCell(int x, int y)
  {
    if(x < 0 || x >7 || y < 0 || y > 7) throw new IndexOutOfBoundsException("Index out of Bound");
    return board[x][y];
  }
  
  public void init(){
    // Pawns
    for(int i = 0; i <= 7; i++){
      board[1][i] = new Cell(1, i, new Pawn(BLACK));
      board[6][i] = new Cell(6, i, new Pawn(WHITE));
    }
    // Other Black Pieces
    board[0][0] = new Cell(0, 0, new Rook(BLACK)); 
    board[0][1] = new Cell(0, 1, new Knight(BLACK)); 
    board[0][2] = new Cell(0, 2, new Bishop(BLACK)); 
    board[0][3] = new Cell(0, 3, new Queen(BLACK)); 
    board[0][4] = new Cell(0, 4, new King(BLACK)); 
    board[0][5] = new Cell(0, 5, new Bishop(BLACK)); 
    board[0][6] = new Cell(0, 6, new Knight(BLACK)); 
    board[0][7] = new Cell(0, 7, new Rook(BLACK)); 
    
    // Other White Pieces
    board[7][0] = new Cell(0, 0, new Rook(WHITE)); 
    board[7][1] = new Cell(0, 1, new Knight(WHITE)); 
    board[7][2] = new Cell(0, 2, new Bishop(WHITE)); 
    board[7][3] = new Cell(0, 3, new Queen(WHITE)); 
    board[7][4] = new Cell(0, 4, new King(WHITE)); 
    board[7][5] = new Cell(0, 5, new Bishop(WHITE)); 
    board[7][6] = new Cell(0, 6, new Knight(WHITE)); 
    board[7][7] = new Cell(0, 7, new Rook(WHITE)); 
    
    // Null Squares
    for(int i = 2; i <= 5; i++) for(int j = 0; j <= 7; j++) board[i][j] = new Cell(i, j, null);
    
  }
}
