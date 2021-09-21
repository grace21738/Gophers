class Soldier extends Enemy{

	float speed = 2f;

	void display(){
		image(soldier, x, y);
	}

	void update(){
    //println("bbbb\n");
		x += speed;
		if(x >= width) x = -w;

	}

	Soldier(float x, float y){
		super(x, y);
	}
}
