void setup()
{
  
  size(1000, 1000);
  colorMode(HSB, 360, 100, 100);
  
}





int[] stripeColour = new int[6];
int[] triColour = new int[4];




void flag (float flagX, float flagY, float stripeSize)
{
  
  for(int i = 0 ; i < 6 ; i ++)
  {
    
    noStroke(); 
    fill(i * (360 / 6), 90, 100);    
    
    rect(flagX, flagY, stripeSize * 12, stripeSize);    
    flagY += stripeSize;
    
  }
  

  
}



void draw()
{
  
  flag(100, 100, 20);
  
}
