void setup()
{
  frameRate(1);
  size(1000, 1000);
  colorMode(HSB, 360, 100, 100);
  
  flagStart();
}

//Flag Centre Point
float[] flagX = new float[8]; 
float[] flagY = new float[8];

void flag (float flagX, float flagY, float stripeSize)
{
  
  float flagDrawX = flagX - (stripeSize * 6);
  float flagDrawY = flagY - (stripeSize / 3);

  
  float stripeY = flagDrawY;
  
  for(int i = 0 ; i < 6 ; i ++)
  {
    
    noStroke(); 
    fill(i * (360 / 6), 90, 95);    
    
    rect(flagDrawX, stripeY, stripeSize * 12, stripeSize);    
    stripeY += stripeSize;
    
  }
  
    
  float triCentre = flagDrawY + (stripeSize * 3);

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
    
    float triTop = flagDrawY + (((stripeSize * 3) / 4) * i);
    float triBottom = flagDrawY + (((stripeSize * 3) / 4) * (8 - i));
    
    triangle(flagDrawX, triTop, flagDrawX, triBottom, flagDrawX + (stripeSize * (6 - i)), triCentre);
    
  }  
  
  noFill();
  strokeWeight(stripeSize / 5.0f);
  
  if (stripeSize <= 5)
  {
    strokeWeight(1);
  }
  
  stroke(270, 70, 90);
  
  circle (flagDrawX + stripeSize, triCentre, stripeSize * 0.75);
  
}

void flagStart()
{
  
  for(int i = 0 ; i < 8 ; i ++)
  {
    
    flagX[i] = random(0, width * 0.95);
    flagY[i] = random(0, height * 0.95);

    
  }
  
}

void draw()
{ 
  
  background(0);
  
  for(int i = 0 ; i < 8 ; i ++)
  {
    
    flag(flagX[i], flagY[i], random(5, 50));
    
  }
  
}
