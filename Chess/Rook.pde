public class Rook extends Piece{
  private boolean WHITE = false; 
  private boolean BLACK = true;
  private PImage Image; 
  
  public Rook(boolean BoW){
    super(BoW);
    PImage R;
    if(BoW == false) R = loadImage("WhiteRook.png");
    else{
      R = loadImage("BlackRook.png");
    }
    R.resize(width/8,height/8);
    this.Image = R;
  }
  
  public PImage getImage(){
    return Image;
  }
  
  public boolean movable(Board board, Cell start, Cell end){
    if(end.getPiece() != null && end.getPiece().BoW() == this.BoW()) return false; // If same color, then no
    int xi = start.getX(); 
    int xf = end.getX(); 
    int yi = start.getY(); 
    int yf = end.getY(); 
    
    // Logic for Moving Rook
    if(xi == xf){ // Horizontal Move
      if(yi < yf) for(int r = yi +1; r < yf; r++){
        if(board.getCell(xi, r).getPiece() != null) return false; 
      }
      if(yf < yi) for(int r = yf + 1; r < yi; r++){
        if(board.getCell(xi, r).getPiece() != null) return false; 
      }
      return true; 
    }
    else if(yi == yf){ // Vertical Move
      if(xi < xf) for(int c = xi +1; c < xf; c++){
        if(board.getCell(c, yi).getPiece() != null) return false; 
      }
      if(xf < xi) for(int c = xf + 1; c < xi; c++){
        if(board.getCell(c, yi).getPiece() != null) return false; 
      }
      return true;
    }
    else{
      for(int r  = 0; r < 8; r++){
        for(int c = 0; c < 8; c++){
          int a = -1;
          if(this.BoW() == WHITE) a = 7; 
          if(this.BoW() == BLACK) a = 0; 
          if(board.getCell(c, r) == new Cell(a, 4, new King(this.BoW()))){
            King KingCell = (King)board.getCell(c, r).getPiece();
            return KingCell.isCastlePossible(board, start, end);
          }
        }
      }
    }
    return false; 
  }
}
