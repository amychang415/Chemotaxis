
int rectangleColor = color(6, 16, 214);
Bacteria[] colony;
Wall[] room;

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


 void makeWalls()
 {
 	int numWall=-1;
 	room = new Wall[500];
 	for (int i = 0; i< 500 ;i=i+50)
 	{
 		room[(i/50)] = new Wall (i,0);
 		room[(i/50)].show();
 		numWall = (i/50);
 	}

 	for (int n = 0; n< 500 ;n=n+50)
 	{
 		room[(n/50)+numWall] = new Wall (n,450);
 		room[(n/50)+numWall].show();
 		numWall = (n/50)+numWall;
 	}
 }
 void draw()   
 {    
 	background(255);

 	for (int i = 0; i< colony.length; i++)
 	{
 	colony[i].show();
 	colony[i].move();
 	makeWalls();
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

 			myX = myX+(int)(Math.random()*3)-1;
 			myY = myY+(int)(Math.random()*3)-1;
 	}

 	void show()
 	{
 		fill(myColor);
 		ellipse(myX,myY,10,10);
 	}
 }    
