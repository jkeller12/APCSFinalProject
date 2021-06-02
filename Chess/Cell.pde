public class Cell{
 private Piece piece; 
 private int x;
 private int y; 
 public Cell(int c, int r, Piece piece){
   if(c < 0 || c > 7 || r < 0 || r > 7) throw new IndexOutOfBoundsException("Index out of Bound");
   this.setPiece(piece);
   this.setX(c);
   this.setY(r);
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
