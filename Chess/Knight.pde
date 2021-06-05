public class Knight extends Piece{
  private PImage Image;
  public Knight(boolean BoW){
    super(BoW);
    PImage Kn;
    if(BoW == false) Kn = loadImage("WhiteKnight.png");
    else{
      Kn = loadImage("BlackKnight.png");
    }
    Kn.resize(width/8,height/8);
    this.Image = Kn;
  }
  
  public PImage getImage(){
    return Image;
  }
  public boolean movable(Board board, Cell start, Cell end){
    if(end.getPiece() != null && end.getPiece().BoW() == this.BoW()) return false; 
    int x = Math.abs(start.getX() - end.getX());
    int y = Math.abs(start.getY() - end.getY()); 
    return x * y == 2; 
  }
}
