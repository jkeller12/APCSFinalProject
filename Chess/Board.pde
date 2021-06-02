public class Board{
  boolean WHITE = false;
  boolean BLACK = true;
  private Cell[][] board;
  private PImage[][] graphicBoard;
  public Board(){
   this.init();
  }

  public Cell getCell(int c, int r)
  {
    if(c < 0 || c > 7 || r < 0 || r > 7) throw new IndexOutOfBoundsException("Index out of Bound");
    return board[r][c];
  }
  public PImage[][] getGraphicBoard(){
    return this.graphicBoard;
  }

  public void init(){
    // Pawns
    for(int r = 0; r <= 7; r++){
      // board[r][c] = new Cell (c, r, piece_type)
      board[r][1] = new Cell(1, r, new Pawn(BLACK));
      board[r][6] = new Cell(6, r, new Pawn(WHITE));
    }
    // Other Black Pieces
    board[0][0] = new Cell(0, 0, new Rook(BLACK));
    board[0][1] = new Cell(1, 0, new Knight(BLACK));
    board[0][2] = new Cell(2, 0, new Bishop(BLACK));
    board[0][3] = new Cell(3, 0, new Queen(BLACK));
    board[0][4] = new Cell(4, 0, new King(BLACK));
    board[0][5] = new Cell(5, 0, new Bishop(BLACK));
    board[0][6] = new Cell(6, 0, new Knight(BLACK));
    board[0][7] = new Cell(7, 0, new Rook(BLACK));

    // Other White Pieces
    board[7][0] = new Cell(0, 7, new Rook(WHITE));
    board[7][1] = new Cell(1, 7, new Knight(WHITE));
    board[7][2] = new Cell(2, 7, new Bishop(WHITE));
    board[7][3] = new Cell(3, 7, new Queen(WHITE));
    board[7][4] = new Cell(4, 7, new King(WHITE));
    board[7][5] = new Cell(5, 7, new Bishop(WHITE));
    board[7][6] = new Cell(6, 7, new Knight(WHITE));
    board[7][7] = new Cell(7, 7, new Rook(WHITE));

    // Null Squares
    for(int r = 2; r <= 5; r++) for(int c = 0; c <= 7; c++) board[r][c] = new Cell(r, c, null);
    for(int r = 0; r < 8; r++){
      for(int c = 0; c < 8; c++){
        graphicBoard[r][c] = board[r][c].getPiece().getImage();
      }
    }
  }
}
