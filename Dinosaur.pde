class Dinosaur extends Enemy {
	// Requirement #4: Complete Dinosaur Class

	final float TRIGGERED_SPEED_MULTIPLIER = 5;
  float speed = 1f;
  boolean is = false;
  PImage img;

	// HINT: Player Detection in update()
	float currentSpeed = speed;

  void display(){
     if (x < 0 || x > width - w) { 
        currentSpeed *= -1 ;
      }
     int direction = ( currentSpeed > 0) ? RIGHT : LEFT;
    pushMatrix();
      translate(x, y);
      if ( direction == RIGHT ) {
        scale(1, 1);
        image(img, 0, 0, w, h); 
      } 
      else {
        scale(-1, 1);
        image(img, -w, 0, w, h); 
      }
    popMatrix();
    //image(dinosaur, x, y);
  }

  void update(){
    x += currentSpeed;
    
    if( player.y == y &&  ((x+w < player.x && !is && currentSpeed>0) || (x > player.x && !is && currentSpeed<0))){
      //println("aaaa\n");
       currentSpeed *= TRIGGERED_SPEED_MULTIPLIER;
       is = true;
    }
    else if( is ){
      currentSpeed /= TRIGGERED_SPEED_MULTIPLIER;
      is = false;
    }
  }

  Dinosaur( float x, float y ){
    super( x,y );
    img = dinosaur;
  }
}
