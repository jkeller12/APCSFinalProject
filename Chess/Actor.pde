public class Move{
  // Initial Position/Piece
  public Actor source; 
  
  // Target Position/Piece
  public Actor target; 
  
  public int x; 
  public int y; 
  
  public Move(int x, int y, Actor target){
    this.target = target; 
    this.x = x; 
    this.y = y; 
  } 
}

public class Actor{
  // Number of Actor
  public int id; 
  
  // Position of Actor
  
  public int posX = 0; 
  public int posY = 0; 
  
  // The foward direction of actor, depends on color
  public int direction = 0; 
}
