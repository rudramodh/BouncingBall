//Instantiating a new vector
PVector location = new PVector();
PVector velocity = new PVector();

public static final float r = 30;

public void setup(){
size(600,600);
location.x=width/2;
location.y=height/2;
velocity.x=3;
velocity.y=4;
}

public void draw(){
background(0);
stroke(255);
ellipse(location.x,location.y,r,r);

//adding two vectors via .add syntax
location.add(velocity);

//for bouncing in y direction
if(location.y >=height || location.y<=0){
  //moving in oppoisite direction
velocity.y = velocity.y * -1;
}
//for bouncing in x direction
if(location.x >=width || location.x<=0){
  //moving in oppoisite direction
velocity.x = velocity.x * -1;
}

}
