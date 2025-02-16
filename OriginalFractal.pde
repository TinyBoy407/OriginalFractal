public void setup()
{
  background(0);
  size(600,600);
  rectMode(CENTER);
}
public void draw()
{
  Squares(300,300,300);
}
public void mousePressed()//optional
{
  strokeWeight(1);
  stroke((int)(Math.random()*255), (int)(Math.random()*255), (int)(Math.random()*255));
  fill((int)(Math.random()*255), (int)(Math.random()*255), (int)(Math.random()*255), (int)(Math.random()*120)+100);
}
public void Squares(int x, int y, int size)
{
  rect(x,y,size,size);
  if(size <= 10){
   rect(x,y,size,size);
  }
  else{
    Squares(x-size/2, y, size/2);
    Squares(x+size/2, y, size/2);
    Squares(x, y-size/2, size/2);
    Squares(x, y+size/2, size/2);
  }
}
