public abstract class Piece{
  private boolean WHITE = false; 
  private boolean BLACK = true;
  private boolean alive = false;
  private boolean moved = false; 
  private boolean BoW = false; 
  // White = False
  // Black = True
  
  public Piece(boolean BoW){
    this.setColor(BoW);
  }
  public boolean BoW(){
    return this.BoW;
  }
  public void setColor(boolean BoW){
    this.BoW = BoW; 
  }
  public boolean isAlive(){
    return this.alive;
  }
  public void setAlive(boolean alive){
    this.alive = alive;
  }
  
  public boolean hasMoved(){
    return this.moved;
  }
  public void setMoved(boolean moved){
    this.moved = moved; 
  }
  
  public abstract boolean movable(Board board, Cell intital, Cell end);
}
