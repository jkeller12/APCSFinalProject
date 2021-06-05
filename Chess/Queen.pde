public class Queen extends Piece{
  private PImage Image;
  public Queen(boolean BoW){
    super(BoW);
    PImage Q;
    if(BoW == false) Q = loadImage("WhiteQueen.png");
    else{
      Q = loadImage("BlackQueen.png");
    }
    Q.resize(width/8,height/8);
    this.Image = Q;
  }
  
  public PImage getImage(){
    return Image;
  }
  public boolean movable(Board board, Cell start, Cell end){
    if(end.getPiece() != null && end.getPiece().BoW() == this.BoW()) return false; // If same color, then no
    Bishop B0 =  new Bishop(this.BoW());
    Rook R0 = new Rook(this.BoW()); 
    return B0.movable(board, start, end) || R0.movable(board, start, end);
  }
}
