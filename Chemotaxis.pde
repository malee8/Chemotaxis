 Particle [] group;
int path=(int)(Math.random()*4);
int sum=0;
void setup()
{
  noStroke();
  size(500, 500);
  background(25);
  group = new Particle[1000];
  for (int i=0; i<group.length; i++) {
    group[i]=new Particle();
  }
}
void draw()
{
  background(0, 150, 255);
  if (sum<5000) {
    fill(255);
    if (path==0) {
      ellipse(10, 15, 25, 25);
      ellipse(10, 35, 25, 25);
      ellipse(110, 15, 25, 25);
      ellipse(110, 35, 25, 25);
      rect(10, 15, 105, 20);
      fill(210, 150, 20);
      ellipse(48, 25, 50, 50);
      ellipse(72, 25, 50, 50);
    }
    if (path==1) {
      ellipse(490, 15, 25, 25);
      ellipse(490, 35, 25, 25);
      ellipse(390, 15, 25, 25);
      ellipse(390, 35, 25, 25);
      rect(385, 15, 105, 20);
      fill(210, 150, 20);
      ellipse(452, 25, 50, 50);
      ellipse(428, 25, 50, 50);
    }
    if (path==2) {
      ellipse(10, 485, 25, 25);
      ellipse(10, 465, 25, 25);
      ellipse(110, 485, 25, 25);
      ellipse(110, 465, 25, 25);
      rect(10, 465, 105, 20);
      fill(210, 150, 20);
      ellipse(48, 475, 50, 50);
      ellipse(72, 475, 50, 50);
    }
    if (path==3) {
      ellipse(490, 485, 25, 25);
      ellipse(490, 465, 25, 25);
      ellipse(390, 485, 25, 25);
      ellipse(390, 465, 25, 25);
      rect(385, 465, 105, 20);
      fill(210, 150, 20);
      ellipse(452, 475, 50, 50);
      ellipse(428, 475, 50, 50);
    }
  }
  for (int i=0; i<group.length; i++) {
    group[i].move();
    group[i].show();
  }
}
class Particle {
  int myX, myY, myColor;
  Particle() {
    myColor=(int)(Math.random()*50);
    myX=250;
    myY=250;
  }
  void move() {
    if (path==0) {
      if (myX>20||myY>20) {
        myX=myX+(int)(Math.random()*6)-4;
        myY=myY+(int)(Math.random()*6)-4;
      } else {
        myX=myX+(int)(Math.random()*20)-9;
        myY=myY+(int)(Math.random()*20)-9;
        sum=sum+1;
      }
    }
    else if (path==1) {
      if (myX<480||myY>20) {
        myX=myX+(int)(Math.random()*5)-1;
        myY=myY+(int)(Math.random()*5)-3;
      } else {
        myX=myX+(int)(Math.random()*20)-9;
        myY=myY+(int)(Math.random()*20)-9;
        sum=sum+1;
      }
    }
    else if (path==2) {
      if (myX>20||myY<480) {
        myX=myX+(int)(Math.random()*5)-3;
        myY=myY+(int)(Math.random()*5)-1;
      } else {
        myX=myX+(int)(Math.random()*20)-9;
        myY=myY+(int)(Math.random()*20)-9;
        sum=sum+1;
      }
    }
    else {
      if (myX<480||myY<480) {
        myX=myX+(int)(Math.random()*6)-2;
        myY=myY+(int)(Math.random()*6)-2;
      } else {
        myX=myX+(int)(Math.random()*20)-9;
        myY=myY+(int)(Math.random()*20)-9;
        sum=sum+1;
      }
    }
  }
  void show() {
    if (((200+sum)/40)<300) {
      fill(myColor, 255-myColor, myColor);
    } else {
      fill(0);
      textAlign(CENTER);
      textSize(50);
      text("They all died.", 250, 250);
      textSize(25);
      text("Cause of Death: Starvation", 250, 300);
      fill(0, 150, 255);
      sum=11800;
    }
    ellipse(myX, myY, (200+sum)/40, (200+sum)/40);
  }
}
