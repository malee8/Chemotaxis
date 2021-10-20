 Particle [] group;
int sum=0;
void setup()
{
  noStroke();
  size(500,500);
  background(25);
  group = new Particle[1000];
  for(int i=0;i<group.length;i++){
    group[i]=new Particle();
  }
}
void draw()
{
  background(0,150,255);
  if(sum<5000){
    fill(255);
    ellipse(10,15,25,25);
    ellipse(10,35,25,25);
    ellipse(110,15,25,25);
    ellipse(110,35,25,25);
    rect(10,15,105,20);
    fill(210,150,20);
    ellipse(48,25,50,50);
    ellipse(72,25,50,50);
  }
  for(int i=0;i<group.length;i++){
    group[i].move();
    group[i].show();
  }
}
class Particle{
  int myX, myY, myColor;
  Particle(){
    myColor=(int)(Math.random()*50);
    myX=250;
    myY=250;
  }
  void move(){
    if(myX>20||myY>20){
      myX=myX+(int)(Math.random()*5)-3;
      myY=myY+(int)(Math.random()*5)-3;
    }
    else{
      sum=sum+1;
      myX=myX+(int)(Math.random()*20)-9;
      myY=myY+(int)(Math.random()*20)-9;
    }
  }
  void show(){
    if(((200+sum)/40)<300){
      fill(myColor,255-myColor,myColor);
    }
    else{
      fill(0);
      textAlign(CENTER);
      textSize(50);
      text("They all died.", 250,250);
      textSize(25);
      text("Cause of Death: Starvation", 250,300);
      fill(0,150,255);
      sum=11800;
    }
    ellipse(myX,myY,(200+sum)/40,(200+sum)/40);
 }
}
