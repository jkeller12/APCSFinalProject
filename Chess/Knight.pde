public class Knight extends Piece{
  public Knight(boolean BoW){
    super(BoW);
  }
  
  public boolean movable(Board board, Cell start, Cell end){
    if(end.getPiece().BoW() == this.BoW()) return false; 
    int x = Math.abs(start.getX() - end.getX());
    int y = Math.abs(start.getY() - end.getY()); 
    return x * y == 2; 
  }
}
