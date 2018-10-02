

int centerX;
int centerY;
int trueCenterX;
int trueCenterY;
Bacteria[] colony;

 //declare bacteria variables here   
 void setup()   
 {     
 	size(500,500);

 	colony = new Bacteria[10];
 	for (int i = 0; i < colony.length; i++)
 	{
 		colony[i] = new Bacteria(250,250,0);
 	}
 	//initialize bacteria variables here   
 }   
 void draw()   
 {    
 	background(255);
 	centerX = 0;
 	centerY = 0;
 	trueCenterX = 0;
 	trueCenterY = 0;
 	for (int i = 0; i< colony.length; i++)
 	{
 	colony[i].show();
 	colony[i].move();
 	}
 	trueCenterX = centerX/colony.length;
 	trueCenterY = centerY/colony.length;
 	//move and show the bacteria   
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
 		
 		if (trueCenterX = 0 && trueCenterY = 0)
 		{
 			myX = myX+(int)(Math.random()*3)-1;
 			myY = myY+(int)(Math.random()*3)-1;
 		}
 		else if (trueCenterX + 20 < myX )
 		{
 			myX = myX+(int)(Math.random()*2);
 			myY = myY+(int)(Math.random()*3)-1;
 		}




 		centerX = centerX + myX;
 		centerY = centerY+ myY;

 	}

 	void show()
 	{
 		fill(myColor);
 		ellipse(myX,myY,10,10);
 	}
 }    
