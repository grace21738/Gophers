class Clock extends Item {
	// Requirement #2: Complete Clock Class
  float clockX, clockY;
  PImage img;
  
  Clock( float x,float y ){
    super( x,y );
    img = clock;
    isAlive=true;
  }
  
	
	//Code for Reference:

		void display(){
      
        //super.display();
        if( isAlive ){
          // Display Cabbage
          image( img, x, y);
    
          // Check collision with player
          if( checkCollision( player ) ){
              addTime(CLOCK_BONUS_SECONDS);
               x = y = -1000;
          }
        }
    }
}
