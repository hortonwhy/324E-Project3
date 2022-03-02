class Bat{
    float x;
    float y;
    PVector velocity;
    Body body;
    Wings wings;

    Bat(){
        x = 0;
        y = 0;
        velocity = new PVector(0, 0);
        num_bats = 0;
    }
    
    Bat(float x, float y){
        this.x = x;
        this.y = y;
        this.velocity = new PVector(0, 0);
        this.body = new Body(x, y, velocity);
        this.wings = new Wings(x, y, velocity);
    }
    
    void display(){
        this.wings.display();
        this.body.display();
    }

    void move(){
        this.body.move();
        this.wings.move();
    }

    void setVelocity(float x, float y){
        velocity.x = x;
        velocity.y = y;
    }
}
