class Meteor {
  float radius;               
  float x,y;
  float deltaX,deltaY;
  float IncreaseSize;

  float a = 0;
  float b = 255;
  
  void moveMeteor() {
   x+=deltaX;
   y = y*deltaY;
   radius+=IncreaseSize;
   displayMeteor();    

  }
  void displayMeteor() {
    ellipse(x, y, radius, radius);
  }
  
  void explode(){
    fill(255,a,0,b);
    a = a+0.4;
    b = b-0.4;
    radius += IncreaseSize;
    displayMeteor();
  }

}