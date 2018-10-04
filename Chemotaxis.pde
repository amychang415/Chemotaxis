
int rectangleColor = color(6, 16, 214);
Bacteria[] colony;
Wall[] room;

 //declare bacteria variables here   
 void setup()   
 {     
 	size(500,500);

 	colony = new Bacteria[5];
 	for (int i = 0; i < colony.length; i++)
 	{
 		colony[i] = new Bacteria(275,275,0);
 	}
 	frameRate(3);
 	//initialize bacteria variables here   
 }  

 class Wall 
 {
 	int myX;
 	int myY;
 	int myW;
 	Wall(int x,int y)
 	{
 		myW = 50;
 		myX = x;
 		myY = y;
 	}
 	void show()
 	{
 		fill(rectangleColor);
 		rect(myX,myY,myW,myW);
 	}
 }

 class Player
 {
 	int myX;
 	int myY;
 	int myColor;
 	Player(int x, int y, int col)
 	{
 		myX = X;
 		myY = Y;
 		myColor = col;
 	}
 	show()
 	{
 		fill(myColor);
 		ellipse(myX,myY,50,50);
 	}
 }


 void makeWalls()
 {
 	int numWall=-1;
 	room = new Wall[500];
 	for (int n = 0; n< 500 ;n=n+50)
 	{
 		room[(n/50)] = new Wall (n,0);
 		room[(n/50)].show();
 		numWall = (n/50);
 	}

 	for (int n = 0; n< 500 ;n=n+50)
 	{
 		room[(n/50)+numWall] = new Wall (n,450);
 		room[(n/50)+numWall].show();
 		numWall = (n/50)+numWall;
 	}

 	for (int n = 0; n< 500 ;n=n+50)
 	{
 		room[(n/50)+numWall] = new Wall (0,n);
 		room[(n/50)+numWall].show();
 		numWall = (n/50)+numWall;
 	}

	for (int n = 0; n< 500 ;n=n+50)
 	{
 		room[(n/50)+numWall] = new Wall (450,n);
 		room[(n/50)+numWall].show();
 		numWall = (n/50)+numWall;
 	}
 		room[numWall] = new Wall (350, 50);
 		room[numWall].show();
 		numWall++;
 		room[numWall] = new Wall (350, 100);
 		room[numWall].show();
 		numWall++;
  		room[numWall] = new Wall (350, 150);
  		room[numWall].show();
 		numWall++;
 		room[numWall] = new Wall (300, 100);
 		room[numWall].show();
 		numWall++;
 		room[numWall] = new Wall (250, 100);
 		room[numWall].show();
 		numWall++;
 		room[numWall] = new Wall (200, 100);
 		room[numWall].show();
 		numWall++;
 		room[numWall] = new Wall (200, 150);
 		room[numWall].show();
 		numWall++;
 		room[numWall] = new Wall (150, 200);
 		room[numWall].show();
 		numWall++;
 		room[numWall] = new Wall (100, 300);
 		room[numWall].show();
 		numWall++;
 		room[numWall] = new Wall (150, 300);
 		room[numWall].show();
 		numWall++;
 		room[numWall] = new Wall (350, 200);
 		room[numWall].show();
 		numWall++;
 		room[numWall] = new Wall (350, 250);
 		room[numWall].show();
 		numWall++;
 		room[numWall] = new Wall (350, 300);
 		room[numWall].show();
 		numWall++;
 		room[numWall] = new Wall (250, 350);
 		room[numWall].show();
 		numWall++;
 		room[numWall] = new Wall (100, 100);
 		room[numWall].show();
 		numWall++;
 		room[numWall] = new Wall (100, 150);
 		room[numWall].show();
 		numWall++;
 }
 void draw()   
 {    
 	background(255);
makeWalls();
 	for (int i = 0; i< colony.length; i++)
 	{
 	colony[i].show();
 	colony[i].move();
 	
 	}

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
 			int moveX;
 			int moveY;
 			moveX = ((int)(Math.random()*3)-1)*50;
 			moveY = ((int)(Math.random()*3)-1)*50;
 			if ((int)(Math.random()*3+1)%2 == 0)
 			{
 				if (get(myX + moveX, myY) != rectangleColor)
 				{
					myX = myX+moveX;
 				}
 			}
 			else
 			{
 				if (get(myX, myY+moveY) != rectangleColor)
 				{
					myY = myY+moveY;
 				}
 			}



 	}

 	void show()
 	{
 		fill(myColor);
 		ellipse(myX,myY,50,50);
 	}
 }    
