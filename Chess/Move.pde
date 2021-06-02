public class Move{
  private Player player; 
  private Cell start; 
  private Cell end; 
  private Piece pieceMoved;
  private Piece pieceKilled; 
  private boolean Castle = false;
  
  public Move(Player player, Cell start, Cell end){
   this.player = player;
   this.start = start;
   this.end = end; 
   this.pieceMoved = start.getPiece();
  }
  public boolean isCastle(){
   return this.Castle;  
  }
  public void setCastle(boolean castle){
    this.Castle = castle; 
  }
  public Cell getStart(){
    return start; 
  }
  public Cell getEnd(){
    return end; 
  }
  
  public void setPieceKilled(Piece piece){
    this.pieceKilled = piece;
  }
  public void setPieceMoved(Piece piece){
   this.pieceMoved = piece; 
  }

}
