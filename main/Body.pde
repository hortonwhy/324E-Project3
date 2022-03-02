class Body extends Bat{
    PShape bat;
    PShape head;
    PShape torso;
    PShape left_eye;
    PShape right_eye;
    PShape left_ear;
    PShape right_ear;

    Body(){
        super();
    }

    Body(float x, float y, PVector velocity){
        this.x = x;
        this.y = y;
        this.velocity = velocity;
    }

    void display(){
        this.bat = createShape(GROUP);

        // create head and body
        fill(100);
        this.head = createShape(ELLIPSE, x, y - 50, 40, 40);
        this.torso = createShape(ELLIPSE, x, y, 50, 100);

        // create eyes
        fill(255, 0, 0);
        this.left_eye = createShape(ELLIPSE, x - 8, y - 50, 7, 7);
        this.right_eye = createShape(ELLIPSE, x + 8, y - 50, 7, 7);

        // add children to group
        this.bat.addChild(torso);
        this.bat.addChild(head);
        this.bat.addChild(left_eye);
        this.bat.addChild(right_eye);
        
        shape(bat);
    }

    void move(){
        this.x += velocity.x;
        this.y += velocity.y;
    }
}