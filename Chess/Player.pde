public class Player{
  public boolean BoW; 
  public Player(boolean BoW){
    this.setColor(BoW);
  }
  public boolean isBoW(){
    return this.BoW;
  }
  public void setColor(boolean BoW){
    this.BoW = BoW; 
  }
}
