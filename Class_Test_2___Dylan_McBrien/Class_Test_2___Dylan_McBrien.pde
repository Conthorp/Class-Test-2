void setup()
{
  frameRate(1);
  size(1000, 1000);
  colorMode(HSB, 360, 100, 100);
  
}

void flag (float flagX, float flagY, float stripeSize)
{
  
  float stripeY = flagY;
  
  for(int i = 0 ; i < 6 ; i ++)
  {
    
    noStroke(); 
    fill(i * (360 / 6), 90, 95);    
    
    rect(flagX, stripeY, stripeSize * 12, stripeSize);    
    stripeY += stripeSize;
    
  }
  
    
  float triCentre = flagY + (stripeSize * 3);

  for(int i = 0 ; i < 4 ; i ++)
  {
    
    noStroke(); 
    
    if (i == 0)
    {
      fill(0, 0, 0);    
    }
    else if(i == 1)
    {
      fill(20, 75, 55); 
    }
    else if(i == 2)
    {
      fill(320, 40, 100); 
    }
    else if (i == 3)
    {
      fill(60, 60, 95); 
    }
    
    float triTop = flagY + (((stripeSize * 3) / 4) * i);
    float triBottom = flagY + (((stripeSize * 3) / 4) * (8 - i));
    
    triangle(flagX, triTop, flagX, triBottom, flagX + (stripeSize * (6 - i)), triCentre);
    
  }  
  
  noFill();
  strokeWeight(stripeSize / 5.0f);
  
  if (stripeSize <= 5)
  {
    strokeWeight(1);
  }
  
  stroke(270, 70, 90);
  
  circle (flagX + stripeSize, triCentre, stripeSize * 0.75);
  
}



void draw()
{ 
  
  background(0);
  
  for(int i = 0 ; i < 8 ; i ++)
  {
    
    flag(random(0, width * 0.9), random(0, width * 0.9), random(5, 50));
    
  }
  
}
