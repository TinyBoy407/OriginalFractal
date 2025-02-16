public void setup()
{
  background(0);
  size(600,600);
  rectMode(CENTER);
}
public void draw()
{
  myFractal(300,300,300);
}
public void mousePressed()//optional
{
  strokeWeight(1);
  stroke((int)(Math.random()*255), (int)(Math.random()*255), (int)(Math.random()*255));
  fill((int)(Math.random()*255), (int)(Math.random()*255), (int)(Math.random()*255), (int)(Math.random()*120)+100);
}
public void myFractal(int x, int y, int siz)
{
  rect(x,y,siz,siz);
  if(siz <= 10){
   rect(x,y,siz,siz);
  }
  else{
    myFractal(x-siz/2, y, siz/2);
    myFractal(x+siz/2, y, siz/2);
    myFractal(x, y-siz/2, siz/2);
    myFractal(x, y+siz/2, siz/2);
  }
}
