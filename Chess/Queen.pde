public class Queen extends Piece{
  private boolean WHITE = false; 
  private boolean BLACK = true;
  
  public Queen(boolean BoW){
    super(BoW);
  }
  public boolean movable(Board board, Cell start, Cell end){
    if(end.getPiece().BoW() == this.BoW()) return false; // If same color, then no
    Bishop B0 =  new Bishop(this.BoW());
    Rook R0 = new Rook(this.BoW()); 
    return B0.movable(board, start, end) || R0.movable(board, start, end);
  }
  
}
