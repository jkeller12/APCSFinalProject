public class Rook extends Piece{
  private boolean Moved = false; 
  
  public Rook(boolean BoW){
    super(BoW);
  }
  public boolean hasMoved (){
    return this.Moved ;
  }
  public void setCMoved(boolean Moved ){
    this.Moved  = Moved ; 
  }
  
  public boolean movable(Board board, Cell start, Cell end){
    if(end.getPiece().BoW() == this.BoW()) return false; // If same color, then no
    
    // Logic for Moving Rook
    if(LOGIC){
     
     return true; 
    }
    return this.isCastlePossible(board, start, end);
  }
  
  private boolean isCastlePossible(Board board, Cell start, Cell end){
    if(this.hasMoved()) return false; 
    if(this.BoW() == WHITE){
      if(start.getX() == 5 && start.getY() == 7){
        
      }
    }
    if(this.BoW() == BLACK){
      
    }
  }
  
}
