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
  
  // Stored Moves
  ArrayList<Move> previousMoves = new ArrayList<Move>(); 
  
  int titleDimensions = 0; 
  
  // Whether actor is white or black 
  
  boolean white = false; // White--> false, black --> true
  public Player player; 
  public Player opponent; 
  
  PImage img; 
  public String name = "Pawn"; 
  
  
  // Constructor w/ color
  public Actor(int posX, int posY, boolean white){
    super(); 
    // Store init pos
    
    this.posX = posX; 
    this.posY = posY; 
    this.white = white; 
    // Direction Set
    
    direction = white ? -1 : 1; 
    
    this.id = (int)(random(1000) * 1000.0); 
  }
  // If no color given
  public Actor(int posX, int posY){
   super(); 
   
   this.posX = posX; 
   this.posY = posY; 
   
   this.id = (int)(random(1000) * 1000.0); 
  }
  
  public void setPlayer(Player player, Player opponent){
    this.player = player; 
    this.opponent = opponent; 
  }
  // Autoload paced on jpg name
  public void setup(){
    String colorName = white ? "White" : "Black"; 
    img = loadImage("images/" + colorName + name + ".png"); 
  }
  
  public void setTitleDimensions(int dimensions){
    titleDimensions = dimensions; 
  }
  
  // Check if target square is same color 
  
  public boolean isAlly(Actor actor){
    if(actor == null) return false; 
    return actor.white == this.white; 
  }
  
  public ArrayList<Move> getAvailableMoves(Board board){
    return new ArrayList<Move>(); 
  }
  
  public ArrayList<Move> getAllMoves(Board board){
    ArrayList<Move> moves = getAvailableMoves(board); 
    for(int i = moves.size()-1; i >= 0; i--){
     Move move = moves.get(i); 
     if(!checkForCheckSolution(board, move)) moves.remove(i); 
    }
    return moves; 
  }
  
}
