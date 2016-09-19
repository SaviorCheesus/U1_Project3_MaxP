/* Why hello there fellow semi-evolved simian. It apears that you have found
my next project. You apear to be rather adement about seeing all of my projects.
One could say that you are stalking me. But enough of my blaberring as a result of
my aimless pontification, that is not why you are here. You are here to test my 
creation! Why, the controls are quite simple. Just utilise the A and D keys, 
moving you left and right respectively. This will navigate a spaceship through a
large group of 
*/

float moveX = 500; //Spaceship X coordinates
float moveSpeed = 15; //Speed of the ship
float[] PlatformY; //Y coordinate of the obstacles
float[] PlatformX; //X coordinate of the obstacles
float objectSpeed = 6; //The speed of the obstacles
int platformAmount = 1000; // Just to get a lot of them coming. Should keep you occupied.
int mode = 1; // Used for changing from screens
void setup()
{
  fullScreen(P2D);
  PlatformY = new float[platformAmount]; // Creating obstacles Y coordinates
  for (int i = 0; i < platformAmount; i++)
  {
    PlatformY[i] = (i - 1) * -250; // Giving it a fixed pattern
  }
 
  PlatformX = new float[platformAmount]; // Creating obstacles X coordinates
  for (int i = 0; i < platformAmount; i ++)
  {
  PlatformX[i] = (random(0,940)); // Giving it a random pattern. 
  }
}

void draw()
{
  if (mode == 1)
  {
    background (0); // Use your best guesse
    spaceShipBody(); // Putting the Spaceship sprite into draw
    spaceShipControls(); // Calling controls
    spaceShipObstacles(); // Calling obstacles 
    objectSpeed = objectSpeed * 1.0003; // Increases the object speed gradually
    moveSpeed = moveSpeed * 1.0001; // Increases the ship speed gradually
  }
  if (mode == 2)
  {
   background (0);
   text ("You did a lose", 700, 220); // To mock you. Bastud
  }
}

void spaceShipBody()
{
  //Main body
  
  fill (230);
  rect(moveX , 750, 10, 100);
  triangle (20 + moveX, 720, moveX, 750, 20+ moveX, 750);
  fill (210);
  rect(30 + moveX, 750, 10, 100);
  triangle (20 + moveX, 720, 20 + moveX, 750, 40+ moveX, 750);
  fill (220);
  rect(10 + moveX, 750, 20, 100);
  triangle (20 + moveX, 730, 10 + moveX, 750, 30+ moveX, 750);
  
  //Wings

  fill (255,155,0);
  rect (10 + moveX, 800, 20, 40);
  fill (255,195,0);
  rect (30 + moveX, 800, 50, 40); 
  fill (255,170,0);
  rect (30 + moveX, 800, 30, 40); 
  fill (255,130,0);
  rect (-40 + moveX, 800, 50, 40); 
  fill (255,105,0);
  rect (-40 + moveX, 800, 20, 40); 
}

void spaceShipControls()
{
  if (keyPressed == true && key == 'd')
  {
    moveX = moveX + moveSpeed; // Move to the right
  }
  if (keyPressed == true && key == 'a')
  {
    moveX = moveX - moveSpeed;  // Move to the left
  }
  
  if (moveX >= width - 80)
  {
    moveX = width - 80; //Right edge collision
  }
  if (moveX <= 40)
  {
    moveX = 40; //Left edge collision
  }
}

void spaceShipObstacles()
{
  for(int i = 0; i < platformAmount; i++) 
  {
    fill(230,230,230); // Collouring of the obstacles
    
    rect(PlatformX[i],PlatformY[i], 500, 20); // The actuall platforms
    PlatformY[i] = PlatformY[i] + objectSpeed; //The objects going down.
    
    d
    if (PlatformY[i] >= 710 && PlatformY[i] <=850 
    && PlatformX[i] < moveX +15 && PlatformX[i] + 470 > moveX)
    {
     mode = 2; // Changes to game over screen
    }
    if (PlatformY[i] >= 770 && PlatformY[i] <=840 
    && PlatformX[i] < moveX +60 && PlatformX[i] + 510 > moveX)
    {
     mode = 2; // Changes to game over screen... as well
    }
  }
  
}