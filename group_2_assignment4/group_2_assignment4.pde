import ddf.minim.*;
Minim minim;
AudioPlayer player;

Volcano volcano = new Volcano();
Debris debris1 = new Debris();
Meteor Exitium = new Meteor();
Trex d1 = new Trex();
Trex d2 = new Trex();
boolean click;

void setup() {
  size(1000,1000);
  //volcano
  volcano.volcBase = createShape(QUAD, 0, 700, 600, 700, 350, 250, 250, 250);
  debris1.pathY = 330;
  //audiofile
  minim = new Minim(this);
  player = minim.loadFile("MeteorExplosion.mp3");
  noStroke();
  d2.x = 3300;
  d2.y = 2200;
  d2.xreset = 3000;
  d2.random1 = 2200;
  d2.random2 = 2400;
}

void mousePressed(){ //for meteor animation
  click = true;
}

void draw() {
  background(220,180,50);//background color
  fill(166, 204, 77);
  noStroke();
  rect(0, 700, 1000, 700);
  
  //volcano animation
  debris1.debris = createShape(ELLIPSE, 300, debris1.pathY, 50, 50);
  volcano.volcBase.setFill(volcano.volcolor);
  debris1.debris.setFill(debris1.debcolor);
  volcano.shakeVolcano();
  debris1.moveDebris();
  shape(debris1.debris, debris1.path, debris1.pathY);
  shape(volcano.volcBase, volcano.path, 30);
  if (debris1.pathY < 0) {
   debris1.pathY = 330;  
  } 
  
  //dinosaur animation 
  d2.size = .3;
  d2.move();
  d1.move();
  
  //meteor animation
  noStroke();
  fill(105,105,105);
  Exitium.deltaX = 1;
  Exitium.deltaY = 1.05;
  Exitium.IncreaseSize = 2;
  if (click == false){
    Exitium.radius = 70;
    Exitium.x = mouseX;
    Exitium.y = mouseY;
    Exitium.displayMeteor();
  }  
  if (click==true && Exitium.y < 1000){       
    Exitium.moveMeteor();  
  }   
  if(Exitium.y > 1000){
    player.play();
    Exitium.explode(); 
  }  
  if(Exitium.radius > 1600){
    Exitium.a = 0;
    Exitium.b = 255;
    player.close();
    player = minim.loadFile("MeteorExplosion.mp3");
    click = false;
  }
}