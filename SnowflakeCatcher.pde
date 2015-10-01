Snowflake snowy[];
void setup()
{
  size(300,300);
  background(0);
  snowy = new Snowflake[50];
    for(int i = 0; i<50; i++) snowy[i] = new Snowflake();
}


void draw()
{
  //your code here
  

  for(int k = 0; k<50; k++){
    snowy[k].erase();
    snowy[k].lookDown();
    snowy[k].move();
    snowy[k].wrap();
    snowy[k].show();
  }
  fill(204,204,0);
  ellipse(150,150, 50,50);
}
void mouseDragged()
{
  //your code here
  if(mouseButton == LEFT){
    fill((int)(Math.random()*256)+1,(int)(Math.random()*256)+1,(int)(Math.random()*256)+1);

    ellipse(mouseX, mouseY, 10,10);
  } else if(mouseButton == RIGHT){
    fill(0);
    ellipse(mouseX, mouseY, 15, 15);
  }
}



class Snowflake
{
  //class member variable declarations
  int x, y;
  boolean isMoving;
  Snowflake()
  {
    //class member variable initializations
    x = (int)(Math.random()*290)+5;
    y = (int)(Math.random()*290)+5;

    isMoving = true;
  }
  void show()
  {
    //your code here
    fill(255,255,255);
    ellipse(x,y, 5, 5);
  }
  void lookDown()
  {
    //your code here ...
    if((0<=y && y<=300) && (get(x,y+5)!=color(0))){

      isMoving = false;
    }
    else isMoving = true;
  }
  void erase()
  {
    //your code here
    fill(0);
    ellipse(x, y, 7, 7);
  }
  void move()
  {
    if(isMoving==true) y++;
    //your code here
  }
  void wrap()
  {
    //your code here ..
    if(y>=295){
      y = 0;
      x = (int)(Math.random() * 290)+5;
    }
  }
}


