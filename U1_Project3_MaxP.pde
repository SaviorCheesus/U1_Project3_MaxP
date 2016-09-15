float moveX = 500;
float speed = 15;
float leftWing = -20;
float leftWingEdge = leftWing;
float rightWing = 50;
float RightWingEdge = rightWing + 40;
int mode = 0;
int[] level;

void setup()
{
  fullScreen();
  int[] level = new int[20];
  level[0]  = -20;
  level[1]  = -40;
  level[2]  = -60;
  level[3]  = -80;
  level[4]  = -100;
  level[5]  = -120;
  level[6]  = -140;
  level[7]  = -160;
  level[8]  = -180;
  level[9]  = -200;
  level[10] = -220;
  level[11] = -240;
  level[12] = -260;
  level[13] = -280;
  level[14] = -300;
  level[15] = -320;
  level[16] = -340;
  level[17] = -360;
  level[18] = -380;
  level[19] = -400;
}

void draw()
{
  background (0);
  spaceShipBody();
  spaceShipControls();

}

void spaceShipBody()
{
  //Main body
  
  fill (230);
  rect(20 + moveX , 750, 10, 100);
  triangle (40 + moveX, 720, 20 + moveX, 750, 40+ moveX, 750);
  fill (210);
  rect(50 + moveX, 750, 10, 100);
  triangle (40 + moveX, 720, 40 + moveX, 750, 60+ moveX, 750);
  fill (220);
  rect(30 + moveX, 750, 20, 100);
  triangle (40 + moveX, 730, 30 + moveX, 750, 50+ moveX, 750);
  
  //Wings

  fill (255,155,0);
  rect (30 + moveX, 800, 20, 40);
  fill (255,170,0);
  rect (leftWing + moveX, 800, 50, 40); 
  fill (255,130,0);
  rect (rightWing + moveX, 800, 50, 40); 
}

void spaceShipControls()
{
  if (keyPressed == true && key == 'd')
  {
    moveX = moveX + speed;
  }
  if (keyPressed == true && key == 'a')
  {
    moveX = moveX - speed;  
  }

}