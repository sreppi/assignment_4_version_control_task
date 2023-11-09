class Particle {
  
  PVector position;
  PVector velocity;
  PVector acceleration;
  float colorR;
  float colorG;
  float colorB;
  
  Particle(float x, float y){
    position = new PVector(x, y);
    velocity = new PVector(random(-2, 2), random(-2, 2));
    acceleration = new PVector(0, 0.5);
    colorR = random(0,255);
    colorG = random(0,255);
    colorB = random(0,255);
  }
  
  void update(){
    velocity.add(acceleration);
    position.add(velocity);
  }
  
  void display(){
    fill(colorR,colorG,colorB);
    ellipse(position.x, position.y, 10, 10);
  }
  
}
