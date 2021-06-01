public class Board{
  Cell[][] board; 
  public Board(){
   this.resetBoard();
  }
  
  public Cell getCell(int x, int y)
  {
    if(x < 0 || x >7 || y < 0 || y > 7) throw new IndexOutOfBoundsException("Index out of Bound");
    return board[x][y];
  }
  
  public void resetBoard(){
    
  }
}
