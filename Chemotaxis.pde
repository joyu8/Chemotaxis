Firefly [] mep;
 void setup()   
 {     
  size(400, 400);
  mep = new Firefly[20];
  for(int i = 0; i < mep.length; i++)
  {
    mep[i] = new Firefly((int)(Math.random()*400), (int)(Math.random()*400));
  }
 }   
 void draw()   
 {    
   background(0);
   frameRate(60);
   for(int i = 0; i < mep.length; i++)
   {
     mep[i].show();
     mep[i].walk();
   }
 }  
 class Firefly    
 {     
   int myX, myY, myColor;
   Firefly(int x, int y)
   {
     myX = x;
     myY = y;
     myColor = ((int)(Math.random()*255));
   }
   void show()
   {
     fill(myColor, myColor, 0);
     noStroke();
     ellipse(myX, myY, 50, 50);
   }
   void walk()
   {
     myX = myX + (int)(Math.random()*3)- 1;
     myY = myY + (int)(Math.random()*3)- 1;
   }
 }
