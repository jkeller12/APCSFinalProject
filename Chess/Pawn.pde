public class Pawn extends Piece{
  private boolean WHITE = false; 
  private boolean BLACK = true;
  
  public Pawn(boolean BoW){
    super(BoW);
  }
  public boolean movable(Board board, Cell start, Cell end){
    if(end.getPiece().BoW() == this.BoW()) return false; // If same color, then no
    
    if(abs(end.getY() - start.getY()) > 2) return false; 
    
    // 1 Box Movement Condition 
    if((abs(end.getY() - start.getY()) == 1) && (end.getX() == start.getX()) && end.getPiece() == null) return true; 
    
    // 2 Box Movement Condition
    if((abs(end.getY() - start.getY()) == 2) && (end.getX() == start.getX()) && end.getPiece() == null)
    {
      // White
      if(this.BoW() == WHITE && board.getCell(start.getX(), start.getY()-1).getPiece() == null) return true; 
      // Black
      if(this.BoW() == BLACK && board.getCell(start.getX(), start.getY()+1).getPiece() == null) return true; 

    }
    
    // Captures
    
    // White
    if(this.BoW() == WHITE && end.getPiece().BoW() == BLACK){
      if(end.getY() - start.getY() == -1 && abs(end.getX() -start.getX()) == 1) return true; 
    }
    
    if(this.BoW() == BLACK && end.getPiece().BoW() == WHITE){
      if(end.getY() - start.getY() == 1 && abs(end.getX() - start.getX()) == 1) return true; 
    }
    
    // En Passant? 
    return false; 
  }
}
