PImage img;
int x = 200;
int y = 100;
int shiftLane;



Bil minBil1;
Bil minBil2;
Bil minBil3;
Bil minBil4;

void setup() {
  size(822,814);
  img=loadImage("Rigtig Vej til programmering.png");




  minBil1= new Bil (color(51),0,500+shiftLane,2.5);
  minBil2= new Bil (color(151),0,300+shiftLane,1);
  minBil3= new Bil (color(100),0,75+shiftLane,4);
  minBil4= new Bil (color(20,100),0,700+shiftLane,2);
}

  void draw(){
      background(img);
      minBil1.move();
      minBil1.display();
      minBil2.move();
      minBil2.display();
      minBil3.move();
      minBil3.display();
      minBil4.move();
      minBil4.display();
   

}
      void mousePressed(){  


  
        shiftLane=+200;
       }

             
 
  class Bil{
    color c;
    float xpos;
    float ypos;
    float xspeed;
    float tp;


    
    Bil(color tempC,float tempXpos, float tempYpos, float tempXspeed){
      c= tempC;
      xpos = tempXpos;
      ypos = tempYpos;
      xspeed = tempXspeed;
    }

    void display(){
      
      fill(c); //sørger for at der er farve
      rectMode(CENTER); //dette centrere rektanglen
      rect(xpos,ypos+shiftLane,50,30); //den laver en rektangel med størrelsen 50,30 i x og y positionen
      
      
      
    }
    void move(){ // dette er hvordan den kan bevæge sig hen af vejen
      xpos = xpos + xspeed;
      if (xpos > width) { 
        xpos = 0;
      }
    }
    
  
  }
  
               
