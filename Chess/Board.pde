public class Board{
  // Dimension
  
  private int dim = 0; 
  private int tileDimensions = 0; 
  
  public Player whitePlayer = new Player(true); 
  public Player blackPlayer = new Player(false); 
  
  private boolean selection = false; 
  Actor selectedActor; 
  
  private boolean currentPlayerIsWhite = true; 
  
  ArrayList<Move> moves = new ArrayList<Move>(); 
  
  public void setup(int dimensions){
    dim = dimensions; 
    tileDimensions = dimensions / 8; 
    whitePlayer.setTileDimensions(tileDimensions); 
    blackPlayer.setTileDimensions(tileDimensions); 
  }
  // Set up player's actors
  public void setupActor(){
   whitePlayer.setupActors(); 
   blackPlayer.setupActors(); 
  }
  
  // Get an actor
  
  public Actor getActor(int x, int y){
    Actor actor = whitePlayer.getActor(x, y); 
    if(actor != null) return actor; 
    return blackPlayer.getActor(x, y); 
  }
}
