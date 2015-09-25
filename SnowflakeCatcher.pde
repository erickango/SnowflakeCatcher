Snowflake snowy[];
void setup()
{
  size(300,300);
}
void draw()
{
  //your code here
}
void mouseDragged()
{
  //your code here
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
  }
  void lookDown()
  {
    //your code here
    if(0<y<300 || get(x,y)!=0)isMoving = false;
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
    if(isMoving) y++;
    //your code here
  }
  void wrap()
  {
    //your code here
  }
}


