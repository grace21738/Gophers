class Cabbage extends Item {
	// Requirement #1: Complete Cabbage Class
  PImage img;
	
	//Code for Reference:

    Cabbage(float x, float y ){
      
      super( x,y );
      //println( x,y );
      img = cabbage;
      isAlive=true;
 
    }
    
    void display(  ){
      
        if( isAlive ){
          //println( x,y );
          
    			image( img, x, y);
    
    			// Check collision with player
    			if( checkCollision( player ) ){
    				  player.health ++;
          }
        }
    }
}
