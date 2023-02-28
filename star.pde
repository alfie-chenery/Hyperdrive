class star{
  float speed = 0;
  float x;
  float y;
  float z;
  float prevx;
  float prevy;

//constructor
  star(){
    x = random(-width/2,width/2);
    y = random(-height/2,height/2);
    z = random(width);
  }

  void update(){
    z -= speed;
    if (speed < 10){//accelerate up to speed 10
      speed += 1; //make line streaks shorter at lower speed
      //may need to use prevz mthod used in coding train video for that to work
    }
    
    if (z < 1){
      x = random(-width/2,width/2);
      y = random(-height/2,height/2);
      z = width; 
    }
  }

  void show(){
    stroke(255);

    
    float sx = map(x/z, 0, 1, 0, width);
    float sy = map(y/z, 0, 1, 0, height);
    float r = map(z,0,width,10,0);
    
    strokeWeight(r);
    point(sx,sy);
    
    prevx = sx;
    prevy = sy;
    strokeWeight(1);
    line(prevx,prevy,x,y);
  }
}
