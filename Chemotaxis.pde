


Bacteria[] colony;


//Bacteria one;

 //declare bacteria variables here   
 void setup()   
 {     
 	size(500,500);

 	colony = new Bacteria[8];
 	for (int i = 0; i < colony.length; i++)
 	{
 		colony[i] = new Bacteria(250,250,0);
 	}
 	//one = new Bacteria(250,250,0);

 	//initialize bacteria variables here   
 }   
 void draw()   
 {    
 	for (int i = 0; i< colony.length; i++)
 	{
 	colony[i].show();
 	colony[i].move();
 	}//move and show the bacteria   
 }  
 class Bacteria    
 {  
  	int endY = 500;
  	int endX = 500;   
 	int myX;
 	int myY; 
 	int myColor;
 	
 	Bacteria(int x, int y, int col)
 	{
 		myX = x;
 		myY = y;
 		myColor = col;
 	}

 	void move()
 	{
 		

 		myX = myX+(int)(Math.random()*3)-1;
 		myY = myY+(int)(Math.random()*3)-1;


 		/*while (myY >=0 && myY <= 500 && myX>=0 && myX <= 500)
 		{
 			myY = myY + (int)(Math.random()*3-1);
 			myX = myX + (int)(Math.random()*3-1);
 		}
 		if (myX <= 0)
 		{
 			myX = myX + (int)(Math.random()*2);
 		}
 		 if (myX >= 500)
 		{
 			myX = myX + (int)(Math.random()*(-2));
 		}
 		if (myY <= 0)
 		{
 			myY = myY + (int)(Math.random()*2);
 		}
 		if (myY >= 500)
 		{
 			myY = myY + (int)(Math.random()*(-2));
 		} */
 	}

 	void show()
 	{
 		fill(myColor);
 		ellipse(myX,myY,10,10);
 	}
 }    
