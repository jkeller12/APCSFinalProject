public class King extends Piece{
  private boolean CastleCompleted = false; 
  
  public King(boolean BoW){
    super(BoW);
  }
  public boolean isCastleCompleted (){
    return this.CastleCompleted ;
  }
  public void setCastlePossible(boolean CastleCompleted ){
    this.CastleCompleted  = CastleCompleted ; 
  }
  
  public boolean movable(Board board, Cell start, Cell end){
    if(end.getPiece().BoW() == this.BoW()) return false; // If same color, then no
    
    if((abs(start.getX() - end.getX()) <= 1) && (abs(start.getY() - end.getY()) <= 1)){
       // if(isChecked) return false; 
       /// IMPLEMENT isChecked;
      return true; 
    }
    return this.isCastlePossible(board, start, end);
  }
  
  private boolean isCastlePossible(Board board, Cell start, Cell end){
    if(this.isCastleCompleted()) return false; 
    
    // White Castle 
    if(this.BoW() == WHITE){
      // Left White Castle
      if(start.getX() == 4 && start.getY() == 7 && end.getX() == 2 && end.getY() == 7){
        
        Cell C = new Cell(0, 7, new Rook(WHITE));
        if(board.getCell(0,7).getPiece() == C.getPiece()){
          if(board.getCell(1, 7).getPiece() == null && 
             board.getCell(2, 7).getPiece() == null && 
             board.getCell(3, 7).getPiece() == null){
            return true;   
          }
        }
      }
      
      // Right White Castle 
      else if(start.getX() == 4 && start.getY() == 7 && end.getX() == 6 && end.getY() == 7){
        Cell C = new Cell(7, 7, new Rook(WHITE));
        if(board.getCell(7,7).getPiece() == C.getPiece()){
          if(board.getCell(6, 7).getPiece() == null && 
             board.getCell(5, 7).getPiece() == null){
            return true;   
          }
        }
      }
    }
    // Black Castle
    if(this.BoW() == BLACK){
      // Left Black Castle
      if(start.getX() == 4 && start.getY() == 0 && end.getX() == 2 && end.getY() == 0){
        
        Cell C = new Cell(0, 0, new Rook(BLACK));
        if(board.getCell(0,0).getPiece() == C.getPiece()){
          if(board.getCell(1, 0).getPiece() == null && 
             board.getCell(2, 0).getPiece() == null && 
             board.getCell(3, 0).getPiece() == null){
            return true;   
          }
        }
      }
      
      // Right Black Castle 
      else if(start.getX() == 4 && start.getY() == 0 && end.getX() == 6 && end.getY() == 0){
        Cell C = new Cell(7, 0, new Rook(BLACK));
        if(board.getCell(7,0).getPiece() == C.getPiece()){
          if(board.getCell(6, 0).getPiece() == null && 
             board.getCell(5, 0).getPiece() == null){
            return true;   
          }
        }
      }
    }
  }
  
}
