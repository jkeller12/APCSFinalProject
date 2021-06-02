public class Bishop extends Piece{
  public Bishop(boolean BoW){
    super(BoW);
  }
  
  public boolean movable(Board board, Cell start, Cell end){
    if(end.getPiece().BoW() == this.BoW()) return false; 
     int xi = start.getX(); 
     int xf = end.getX();
     int yi = start.getY(); 
     int yf = start.getY(); 
     
     int dX = abs(xi-xf); 
     
     int dY = abs(yi-yf); 
     if(dX == 0 || dY == 0) return false; 
     if(dX/dY == 1){
       if(xi < xf){
         for(int c = xi+1; c < xf; c++){
           if(yi < yf) for(int r = yi+1; r < yf; r++) if(board.getCell(c, r).getPiece() != null) return false; 
           
           if(yf < yi) for(int r = yf; r < yi; r++) if(board.getCell(c, r).getPiece() != null) return false;
         }
       }
       if(xf < xi){
         for(int c = xf+1; c < xi; c++){
           if(yi < yf) for(int r = yi+1; r < yf; r++) if(board.getCell(c, r).getPiece() != null) return false; 
           
           if(yf < yi) for(int r = yf; r < yi; r++) if(board.getCell(c, r).getPiece() != null) return false;
         }
       }
       else return true; 
     }
     return false;
  }
}
