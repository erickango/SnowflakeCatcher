Snowflake snowy[];
void setup()
{
  size(300,300);
}
void draw()
{
  //your code here
  background(0);
}
void mouseDragged()
{
  //your code here
}

void mousePressed(){//or Dragged
  if(mouseButton == LEFT){
    fill((int)(Math.random()*256)+1,(int)(Math.random()*256)+1,(int)(Math.random()*256)+1);
  }
  else if(mouseButton == RIGHT){
    Snowflake.erase();
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
    x = (int)(Math.random()*301);
    y = (int)(Math.random()*301);
    isMoving = true;
  }
  void show()
  {
    //your code here
    fill(255);
    ellipse(x, y, 5, 5);
  }
  void lookDown()
  {
    //your code here
    if(0<y<300 && get(x,y)!=0) isMoving = false;
    else isMoving = true;
  }
  void erase()
  {
    //your code here
    fill(0);
    ellipse(mouseX, mouseY, 7, 7);
  }
  void move()
  {
    if(isMoving) y++;
    //your code here
  }
  void wrap()
  {
    //your code here
  }
}


