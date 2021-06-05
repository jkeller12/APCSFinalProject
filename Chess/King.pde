public class King extends Piece{
  private boolean WHITE = false; 
  private boolean BLACK = true;
    private PImage Image;

  private boolean CastleCompleted = false; 
  
  public King(boolean BoW){
    super(BoW);
    PImage K;
    if(BoW == WHITE) K = loadImage("WhiteKing.png");
    else{
      K = loadImage("BlackKing.png");
    }
    K.resize(width/8,height/8);
    this.Image = K;
  }
  public PImage getImage(){
    return Image;
  }
  public boolean isCastleCompleted(){
    return this.CastleCompleted ;
  }
  public void setCastleCompleted(boolean CastleCompleted ){
    this.CastleCompleted  = CastleCompleted ; 
  }
  
  public boolean movable(Board board, Cell start, Cell end){
    if(end.getPiece() != null && end.getPiece().BoW() == this.BoW()) return false; // If same color, then no
     System.out.println("got through"); 
  
    if(this.isCastlePossible(board, start, end)){ // if(isChecked) return false; 
       /// IMPLEMENT isChecked;
      return true; 
    }
    return ((abs(start.getX() - end.getX()) <= 1) && (abs(start.getY() - end.getY()) <= 1));
  }
  /*
  private boolean inCheck(Board board, Cell pos){
    if(this.BoW() == WHITE){
      
    }
    return false; 
  }*/
  
  
  private boolean isCastlePossible(Board board, Cell start, Cell end){
    if(this.CastleCompleted) return false; 
    
    // White Castle 
    if(this.BoW() == WHITE){
      // Left White Castle
      if(start.getX() == 4 && start.getY() == 7 && end.getX() == 2 && end.getY() == 7){
        
        if(board.getCell(0,7).getPiece() instanceof Rook){
          if(board.getCell(1, 7).getPiece() == null && 
             board.getCell(2, 7).getPiece() == null && 
             board.getCell(3, 7).getPiece() == null){
               if(board.getCell(0,7).getPiece().hasMoved() == false) return true;   
          }
        }
      }
      
      // Right White Castle 
      else if(start.getX() == 4 && start.getY() == 7 && end.getX() == 6 && end.getY() == 7){
        
        if(board.getCell(7,7).getPiece() instanceof Rook){
          if(board.getCell(6, 7).getPiece() == null && 
             board.getCell(5, 7).getPiece() == null){
               if(board.getCell(0,7).getPiece().hasMoved() == false) return true;   
          }
        }
      }
    }
    // Black Castle
    else if(this.BoW() == BLACK){
      // Left Black Castle
      if(start.getX() == 4 && start.getY() == 0 && end.getX() == 2 && end.getY() == 0){
        
        if(board.getCell(0,0).getPiece() instanceof Rook){
          if(board.getCell(1, 0).getPiece() == null && 
             board.getCell(2, 0).getPiece() == null && 
             board.getCell(3, 0).getPiece() == null){
            return true;   
          }
        }
      }
      
      // Right Black Castle 
      else if(start.getX() == 4 && start.getY() == 0 && end.getX() == 6 && end.getY() == 0){
        
        if(board.getCell(7,0).getPiece() instanceof Rook){
          if(board.getCell(6, 0).getPiece() == null && 
             board.getCell(5, 0).getPiece() == null){
            return true;   
          }
        }
      }
    }
    return false; 
  }
  
}
