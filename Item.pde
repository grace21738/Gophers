class Item {
	boolean isAlive;
	float x, y;
	float w = SOIL_SIZE;
	float h = SOIL_SIZE;
  PImage img;
  

	Item(float x, float y){
    //println( x,y );
    isAlive = true;
    this.x = x;
    this.y = y;

  }
  
  void display(  ){
  }
  

	boolean checkCollision(Player player){
    
    if( x + SOIL_SIZE > player.x    // r1 right edge past r2 left
        && x < player.x + SOIL_SIZE    // r1 left edge past r2 right
        && y + SOIL_SIZE > player.y    // r1 top edge past r2 bottom
        && y < player.y + SOIL_SIZE) { // r1 bottom edge past r2 top
        
        isAlive = false;
        x = -1000;
        y = -1000;
        return true;

      }
  
  return false;        
  
  }

}
