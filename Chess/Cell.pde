public class Cell{
 private Piece piece; 
 private int x;
 private int y; 
 public Cell(int x, int y, Piece piece){
   this.setPiece(piece);
   this.setX(x);
   this.setY(y);
 }
 public Piece getPiece(){
   return this.piece;
 }
 public void setPiece(Piece p){
   this.piece = p; 
 }
 public int getX(){
   return this.x;
 }
 public int getY(){
   return this.y;
 }
 public void setX(int x){
   this.x = x; 
 }
 public void setY(int y){
   this.y = y;
 }
 
}
