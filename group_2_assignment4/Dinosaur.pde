class Trex {
  
  float size = .4;
  float x = 3000;
  float y = 2000;
  float i;
  float speed = 15;
  float xreset = 2200;
  float random1 = 1700;
  float random2 = 2100;
  void frame(float x, float y){
    //head
    stroke(74, 142, 18);
    fill(41, 81, 8);
    beginShape();
    curveVertex((x) * size, (y) * size);
    curveVertex((x) * size, (y) * size);
    curveVertex((x - 5) * size, (y -20) * size);
    curveVertex((x + 5) * size, (y - 70) * size);
    curveVertex((x + 65) * size, (y - 90) * size);
    curveVertex((x + 105) * size, (y - 110) * size);
    //browridge
    curveVertex((x + 85) * size, (y - 85) * size);
    curveVertex((x + 105) * size, (y - 110) * size);
    curveVertex((x + 125) * size, (y - 125) * size);
    curveVertex((x + 165) * size, (y - 110) * size);
    //head
    curveVertex((x + 135) * size, (y - 124) * size);
    curveVertex((x + 185) * size, (y - 130) * size);
    //back
    curveVertex((x + 285) * size, (y - 70) * size);
    curveVertex((x + 345) * size, (y - 40) * size);
    curveVertex((x + 445) * size, (y - 45) * size);
    curveVertex((x + 545) * size, (y - 45) * size);
    //tail upper curve
    curveVertex((x + 645) * size, (y - 20) * size);
    curveVertex((x + 845) * size, (y - 30) * size);
    curveVertex((x + 1045) * size, (y - 90) * size);
    curveVertex((x + 1145) * size, (y - 100) * size);
    //tail lower curve
    curveVertex((x + 1195) * size, (y - 100) * size);
    curveVertex((x + 1320) * size, (y - 95) * size);
    curveVertex((x + 1045) * size, (y - 20) * size);
    curveVertex((x + 865) * size, (y + 70) * size);
    //belly
    curveVertex((x + 705) * size, (y + 130) * size);
    curveVertex((x + 545) * size, (y + 210) * size);
    curveVertex((x + 325) * size, (y + 160) * size);
    curveVertex((x + 285) * size, (y + 150) * size); 
    //neck lower curve
    curveVertex((x + 265) * size, (y + 130) * size);
    curveVertex((x + 245) * size, (y + 100) * size);
    curveVertex((x + 205) * size, (y + 60) * size);
    curveVertex((x + 170) * size, (y + 62) * size);
    curveVertex((x + 170) * size, (y + 62) * size);   
    //jaw
    curveVertex((x + 225) * size, (y + 20) * size);
    curveVertex((x + 235) * size, (y + 3) * size);
    curveVertex((x + 225) * size, (y - 40) * size);
    curveVertex((x + 225) * size, (y + 20) * size);
    curveVertex((x + 95) * size, (y + 100) * size); 
    //mouth
    curveVertex((x + 45) * size, (y + 90) * size);
    curveVertex((x + 85) * size, (y + 60) * size);
    curveVertex((x + 130) * size, (y - 5) * size);
    curveVertex((x + 145) * size, (y - 20) * size);
    curveVertex((x + 145) * size, (y - 20) * size);
    curveVertex((x + 145) * size, (y - 20) * size);
    curveVertex((x + 145) * size, (y - 20) * size);
    curveVertex((x + 95) * size, (y - 40) * size);
    curveVertex((x + 5) * size, (y) * size);
    curveVertex((x) * size, (y) * size);
    endShape();
  }
  void arm(float x, float y){
    stroke(74, 142, 18);
    fill(41, 81, 8);
    beginShape();
    curveVertex((x + 300) * size, (y + 90) * size);
    curveVertex((x + 300) * size, (y + 90) * size);
    curveVertex((x + 280) * size, (y + 120) * size);
    curveVertex((x + 220) * size, (y + 140) * size);
    curveVertex((x + 190) * size, (y + 170) * size);
    curveVertex((x + 190) * size, (y + 150) * size);
    curveVertex((x + 220) * size, (y + 130) * size);
    curveVertex((x + 260) * size, (y + 100) * size);
    curveVertex((x + 280) * size, (y + 70) * size);
    curveVertex((x + 280) * size, (y + 70) * size);
    endShape();
  }
  void leg1(float x, float y){
    stroke(74, 142, 18);
    fill(41, 81, 8);
    //thigh
    beginShape();
    curveVertex((x + 625) * size, (y + 30) * size);
    curveVertex((x + 625) * size, (y + 30) * size);
    curveVertex((x + 655) * size, (y + 60) * size);
    curveVertex((x + 665) * size, (y + 100) * size);
    curveVertex((x + 645) * size, (y + 150) * size);
    curveVertex((x + 595) * size, (y + 190) * size);
    curveVertex((x + 445) * size, (y + 200) * size);    
    //calf
    curveVertex((x + 415) * size, (y + 190) * size);
    curveVertex((x + 435) * size, (y + 220) * size);
    curveVertex((x + 425) * size, (y + 280) * size);    
    //foot
    curveVertex((x + 415) * size, (y + 320) * size);
    curveVertex((x + 425) * size, (y + 330) * size);
    curveVertex((x + 415) * size, (y + 350) * size);
    curveVertex((x + 400) * size, (y + 375) * size);
    curveVertex((x + 375) * size, (y + 410) * size);
    vertex((x + 375) * size, (y + 410) * size);
    vertex((x + 265) * size, (y + 410) * size);
    curveVertex((x + 265) * size, (y + 410) * size);
    curveVertex((x + 290) * size, (y + 390) * size);
    curveVertex((x + 345) * size, (y + 380) * size);    
    // calf    
    curveVertex((x + 375) * size, (y + 320) * size);    
    //thigh
    curveVertex((x + 345) * size, (y + 190) * size);
    curveVertex((x + 345) * size, (y + 170) * size);
    curveVertex((x + 395) * size, (y + 90) * size);
    curveVertex((x + 495) * size, (y + 30) * size);
    curveVertex((x + 495) * size, (y + 30) * size);    
    endShape();
  }
  void leg2(float x, float y){
    stroke(74, 142, 18);
    fill(41, 81, 8);
    beginShape();
    curveVertex((x + 460) * size, (y + 60) * size);
    curveVertex((x + 460) * size, (y + 60) * size);
    curveVertex((x + 470) * size, (y + 150) * size);
    curveVertex((x + 490) * size, (y + 190) * size);
    curveVertex((x + 575) * size, (y + 230) * size);
    curveVertex((x + 690) * size, (y + 260) * size);
    curveVertex((x + 700) * size, (y + 320) * size);
    curveVertex((x + 700) * size, (y + 320) * size);    
    //other foot
    curveVertex((x + 700) * size, (y + 320) * size);
    curveVertex((x + 700) * size, (y + 320) * size);
    curveVertex((x + 670) * size, (y + 380) * size);
    curveVertex((x + 640) * size, (y + 380) * size);
    curveVertex((x + 610) * size, (y + 410) * size);
    curveVertex((x + 610) * size, (y + 410) * size);
    vertex((x + 610) * size, (y + 410) * size);
    vertex((x + 685) * size, (y + 410) * size);   
    //other heel
    curveVertex((x + 685) * size, (y + 410) * size);
    curveVertex((x + 685) * size, (y + 410) * size);
    curveVertex((x + 745) * size, (y + 340) * size);
    curveVertex((x + 740) * size, (y + 320) * size);
    curveVertex((x + 740) * size, (y + 320) * size);    
    //other thigh
    curveVertex((x + 740) * size, (y + 240) * size);
    curveVertex((x + 700) * size, (y + 230) * size);
    curveVertex((x + 650) * size, (y + 190) * size);
    curveVertex((x + 600) * size, (y + 170) * size);
    curveVertex((x + 630) * size, (y + 140) * size);
    curveVertex((x + 650) * size, (y + 110) * size);
    curveVertex((x + 670) * size, (y + 60) * size);
    curveVertex((x + 670) * size, (y + 60) * size);
    endShape();
  }
  
  void eye(float x, float y){
    stroke(0);
    fill(0);
    ellipse((x + 125) * size, (y - 95) * size, 25 * size, 25 * size);
  }
  
  void teeth(float x, float y){
    fill(255);
    stroke(255);
    beginShape(TRIANGLES);
    vertex((x + 40) * size, (y + 60) * size);
    vertex((x + 48) * size, (y + 90) * size);
    vertex((x + 65) * size, (y + 85) * size);
    
    vertex((x + 65) * size, (y + 55) * size);
    vertex((x + 70) * size, (y + 85) * size);
    vertex((x + 100) * size, (y + 85) * size);
    
    vertex((x + 85) * size, (y + 45) * size);
    vertex((x + 90) * size, (y + 75) * size);
    vertex((x + 120) * size, (y + 75) * size);
    
    vertex((x + 20) * size, (y + 10) * size);
    vertex((x + 5) * size, (y) * size);
    vertex((x + 20) * size, (y - 20) * size);
    
    vertex((x + 44) * size, (y - 5) * size);
    vertex((x + 30) * size, (y - 10) * size);
    vertex((x + 45) * size, (y - 25) * size);
    
    vertex((x + 75) * size, (y - 16) * size);
    vertex((x + 55) * size, (y - 25) * size);
    vertex((x + 75) * size, (y - 40) * size);
    
    endShape();
  }
  
  void display(){
    strokeWeight(4);
    stroke(29, 96, 16);
    if(i <= 20){
      teeth(x, y);
      arm(x - 30, y - 30);
      leg2(x, y);
      frame(x, y);
      arm(x, y);
      leg1(x, y);
      eye(x, y);   
      i += 1;
    }
    else if(i <= 40){
      teeth(x, y);
      arm(x - 30, y - 30);
      leg1(x, y);
      frame(x, y);
      arm(x, y);
      leg2(x,y);
      eye(x, y);
      i += 1;
    }
    else if(i == 41){
      teeth(x, y);
      arm(x - 30, y - 30);
      leg1(x, y);
      frame(x, y);
      arm(x, y);
      leg2(x,y);
      eye(x, y);

      i = 0;
    }
  }
  
  void move(){
    if(x < -2000){
      x = xreset;
      y = random(random1, random2);
      speed = random(15, 30);
    }
    x -= speed;
    display();
  }
}