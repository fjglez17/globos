class Globo
{
  float x, y,vx,vy;
  color c;
  Globo (float _x, float _y)
  {
    
   x=_x;
   y=_y; 
   vx=random(-0.5,0.5);
   vy=random(-15,-0.5);
   c = color(random(0,255),random(0,255),random(0,255));
  }

  void update()
  {
    y+=vy;
    x+=vx;
  }

  void dibujate()
  {
      fill(c);
      ellipse(x,y,100,100);
  }
  
}

ArrayList<Globo> globos;


void setup()
{
  size(640,480);
  globos = new ArrayList<Globo>();  
}

void draw()
{
  background(#E83090);
  for(int i=0;i<globos.size();i++)
  {
    globos.get(i).update();
    globos.get(i).dibujate();
  }
}

void mousePressed()
{
  globos.add(new Globo(mouseX,mouseY));
}
