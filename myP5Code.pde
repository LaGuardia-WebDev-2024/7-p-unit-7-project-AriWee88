//🟢Setup Procedure - Runs Once to Set The Canvas
void setup() {
    size(400, 400); 
}

//🎯Variable Declarations Go Here
Var outerflame = 25
var a = 37
var aspeed = 1
;



Var innerFlame = 20;
var x = 154
var y = 74 
var xspeed = .04



//🟢Draw Procedure - Runs on Repeat


draw = function(){

     noStroke(); 
      background(255,255,255,0);


       if(mousePressed){
        showXYPositions();

      }

      //🎯Animation Code Goes Here
      rect();

    // light 
    fill(255, 233, 188)
    ellipse(155,68,outerflame,a) 
     ellipse(250,65,outerflame,a)
     
     a = a + aspeed;
     if ( a > 39) {aspeed = -.5}
     if (a<35) {aspeed = .5}
     

     

     // inside of light
     fill(254,191,65)
     ellipse(x,y,innerFlame - 8 ,20,innerFlame)
      ellipse(x + 96,y - 2,12,innerFlame)
    
    x = x + xspeed;
    if (x > 154) {xspeed = -1}
    if ( x < 151) {xspeed = 1}
  
}
 
//🟡Extra FUN Features Ms. Hall Added
//Proceed with Caution (and Curiosity!)

showXYPositions = function(){
    fill(255,255,255)
    rect(270,300,150,100)
    fill(0,0,0)
    textSize(30)
    text("x = " + mouseX + "\ny = " +mouseY, 290, 350)
    fill(255,0,255)
    ellipse(mouseX, mouseY, 10, 10);
    fill(255,255,255)
}
