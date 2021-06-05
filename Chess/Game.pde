public class Game{
  private boolean WHITE = false;
  private boolean BLACK = true;
  private Player[] players;
  private Board board = new Board();
  private Player currentTurn;
  private GameState state;
  private ArrayList<Move> movesPlayed;

  public Game(){
    
    players = new Player[2];
    Player p1 = new Player(WHITE);
    Player p2 = new Player(BLACK);
    movesPlayed = new ArrayList<Move>();
    this.setState(GameState.ACTIVE);
    this.init(p1, p2);
    movesPlayed.clear();
  }
  public void init(Player p1, Player p2){
    
    players[0] = p1;
    players[1] = p2;
    this.currentTurn = players[0];
    board.init(); // i know this works
  }
  
  public Player[] getPlayers(){
    return this.players; 
  }
  public Board getBoard(){
    return this.board; 
  }
  
  public GameState getState(){
    return this.state;
  }
  
  public void setState(GameState s){
    this.state = s;
  }
  
  public boolean isGameOver(){
    return this.getState() != GameState.ACTIVE;
  }
  
  
  
  
  public boolean ExecuteMove(Player player, Move move){
    
    Piece start = move.getStart().getPiece();
    if(start == null){
      System.out.println("Null Start");
      return false; // if empty square false
    }
    if(player != currentTurn){
      System.out.println("Not your turn");
      return false; // if not turn ret false
    }
    if(start.BoW() != player.isBoW()){
      System.out.println("Piece accessed isn't color of player");
      return false; // if piece not player's ret false
    }
    // Movable
    
    if(!start.movable(board, move.getStart(), move.getEnd())){
      System.out.println("Piece doesn't have abiity to move to end square"); 
      return false; // If piece can't move from a to b, ret false
    }

    // Capture
    Piece target_piece = move.getEnd().getPiece(); // get piece at destination
    if(target_piece != null){ // If target square has a piece, set it to false, and store it in instance of move
       target_piece.setAlive(false);
       move.setPieceKilled(target_piece);
    }

    // Castle

    if(start instanceof King && ((King)start).isCastlePossible(board, move.getStart(), move.getEnd())){
      move.setCastle(true); 
    }

    movesPlayed.add(move); 

    move.getEnd().setPiece(move.getStart().getPiece());
    move.getStart().setPiece(null);
    // End Game Scneario
    if(target_piece != null && target_piece instanceof King){
      if(player.isBoW() == false) this.setState(GameState.WHITE_WIN);
      if(player.isBoW() == true) this.setState(GameState.BLACK_WIN);
    }
    if(this.currentTurn == players[0]) this.currentTurn = players[1];
    else this.currentTurn = players[0];
    return true;
  }




  public boolean playerMove(Player player, int xi, int yi, int xf, int yf){
    Cell start = board.getCell(xi, yi);
    Cell end = board.getCell(xf, yf);
    Move move = new Move(player, start, end);
    return this.ExecuteMove(player, move);
  }


}
