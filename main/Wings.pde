class Wings extends Bat{
    PShape left_wing;
    PShape right_wing;
    float distance = 0;
    boolean increase = true;

    Wings(){
        super();
    }
    
    Wings(float x, float y, PVector velocity){
        this.x = x;
        this.y = y;
        this.velocity = velocity;
    }

    void display(){
        fill(0);
        
        left_wing = createShape(TRIANGLE, x - 20, y - 20, x - 70 + distance, y - 40, x - 20, y + 80);
        right_wing = createShape(TRIANGLE, x + 20, y - 20, x + 70 - distance, y - 40, x + 20, y + 80);
        shape(left_wing);
        shape(right_wing);
        
        // change the x position of the top corner on the wings 
        if (distance <= 0) {
            increase = true;
        } else if (distance >= 50) {
            increase = false;
        }
        
        // increment or decrement
        if (increase == true) {
            distance += 1 * constrain(velocity.x * velocity.y, 1, 100);
        } else if (increase == false) {
            distance -= 1 * constrain(velocity.x * velocity.y, 1, 100);
        }
    }

    void move(){
        this.x += velocity.x;
        this.y += velocity.y;
    }
}