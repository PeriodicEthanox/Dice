int counter = 0;
void setup()
{
  size(500, 500);
  noLoop();
}
Die bob;
void draw()
{
  background(200);
  for (int j = 1; j <= 400; j += 50) {
    for (int i = 1; i <= 500; i += 50) {
      bob = new Die (i, j);
      bob.show();
    }
  }
  text("The total of the dice is " +counter, 225, 450);
}


void mousePressed()
{  
  redraw();
  counter = 0;
}
class Die
{
  int myX, myY, num;


  Die(int x, int y) //constructor
  {
    myX = x;
    myY = y;
    roll();
  }
  void roll()
  {
    num = (int) (Math.random() * 6) + 1;
  }

  void show()
  {
    fill(255);
    rect (myX, myY, 40, 40);
    fill(0);
    if (num == 1) {
      ellipse(myX + 20, myY + 20, 3, 3);
      counter += 1;
    } else if (num == 2) {
      ellipse(myX + 5, myY + 5, 3, 3);
      ellipse(myX + 35, myY + 35, 3, 3);
      counter += 2;
    } else if (num == 3) {
      ellipse(myX + 5, myY + 5, 3, 3);
      ellipse(myX + 35, myY + 35, 3, 3);
      ellipse(myX + 20, myY + 20, 3, 3);
      counter += 3;
    } else if (num == 4) {
      ellipse(myX + 5, myY + 5, 3, 3);
      ellipse(myX + 35, myY + 35, 3, 3);
      ellipse(myX + 35, myY + 5, 3, 3);
      ellipse(myX + 5, myY + 35, 3, 3);
      counter += 4;
    } else if (num == 5) {
      ellipse(myX + 5, myY + 5, 3, 3);
      ellipse(myX + 35, myY + 35, 3, 3);
      ellipse(myX + 35, myY + 5, 3, 3);
      ellipse(myX + 5, myY + 35, 3, 3);
      ellipse(myX + 20, myY + 20, 3, 3);
      counter += 5;
    } else {
      ellipse(myX + 5, myY + 5, 3, 3);
      ellipse(myX + 35, myY + 35, 3, 3);
      ellipse(myX + 35, myY + 5, 3, 3);
      ellipse(myX + 5, myY + 35, 3, 3);
      ellipse(myX + 5, myY + 20, 3, 3);
      ellipse(myX + 35, myY + 20, 3, 3);
      counter += 6;
    }
  }
}
