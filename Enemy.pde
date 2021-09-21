class Enemy {
	float x, y;
	float w = SOIL_SIZE;
	float h = SOIL_SIZE;

  Enemy(float x, float y){
    this.x = x;
    this.y = y;
  }

	void checkCollision(Player player){

		if(isHit(x, y, w, h, player.x, player.y, player.w, player.h)){

			player.hurt();

		}
	}

	void display(){
  }
	void update(){
    
  }

}
