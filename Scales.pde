void setup() {
  size(500, 500);  //feel free to change the size
  noLoop(); //stops the draw() function from repeating
}
void draw() {
  boolean shift = true;
  for (int y = 600; y >= -100; y -= 44)
  {
    for (int x = -110; x <= 550; x += 110)
    {
      if (shift == true)
        scale(x + 55, y);
      else 
        scale(x,y);
    }
    if (shift == true)
      shift = false;
    else
      shift = true;
  }
}

void scale(int x, int y) {
  noStroke();
  fill(126,125,65);
  bezier(-5 + x ,0 + y,7 + x ,120 + y,93 + x ,120 + y,105 + x ,0 + y);
  fill(45,87,71);
  bezier(-5 + x ,0 + y,10 + x ,105 + y,90 + x ,105 + y,105 + x ,0 + y);
  fill(27,30,9);
  bezier(0 + x ,0 + y,15 + x ,95 + y,85 + x ,95 + y,100 + x ,0 + y);
}
