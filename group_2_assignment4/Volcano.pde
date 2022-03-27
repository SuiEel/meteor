class Volcano {
  
  PShape volcBase;
  color volcolor = color(100, 40, 10);
  float xstart = 0;
  float xend = 5;
  float path;
  float lerpRange;  
  void shakeVolcano() {
    this.lerpRange += .5;
    this.path = lerp(volcano.xstart, volcano.xend, sin(volcano.lerpRange));
    
  }

}

class Debris extends Volcano {
  
  PShape debris;
  float pathY;
  float ystart = 0;
  float yend = 5;
  float lerpRangeY;  
  color debcolor = color(250, 150, 40);
  
  void moveDebris() {
    this.path = lerp(volcano.xstart, volcano.xend, sin(volcano.lerpRange));
    this.pathY -= 6;
  }
  
  
}