Die firstDie;
Die secondDie;
Die thirdDie;
Die fourthDie;
Die fifthDie;
Die sixthDie;
Die seventhDie;
Die eighthDie;
Die ninthDie;
int counter = 0;

void setup(){
  size(700, 700);
  
  noLoop();
  firstDie = new Die(70, 50);
  secondDie = new Die(70, 250);
  thirdDie = new Die(70, 450);
  fourthDie = new Die(270, 50);
  fifthDie = new Die(470, 50);
  sixthDie = new Die(270, 250);
  seventhDie = new Die(270, 450);
  eighthDie = new Die(470, 250);
  ninthDie = new Die(470, 450);
  
  PFont f;
  f = createFont("Comic Sans MS",16,true);
  textFont(f,36);
  
}

void draw(){
  background(82, 227, 110);
 
    firstDie.roll();
    secondDie.roll();
    thirdDie.roll();
    fourthDie.roll();
    fifthDie.roll();
    sixthDie.roll();
    seventhDie.roll();
    eighthDie.roll();
    ninthDie.roll();
    
    fill(255, 255, 255);
    firstDie.show();
    secondDie.show();
    thirdDie.show();
    fourthDie.show();
    fifthDie.show();
    sixthDie.show();
    seventhDie.show();
    eighthDie.show();
    ninthDie.show();
    fill(240, 50, 100);
    text("Your total is:" + counter, 60, 600);

}

void mousePressed(){
  counter = 0;
  redraw();
}


//Dice: Models a single 6 sided dice cube
//Each instance should randomly assign itself a value from 1 to 6
class Die {
	//variable declarations for your Die instances here
  int x_pos, y_pos;
  int face;
	
	//constructor
	Die(int x, int y){
		x_pos = x;
    y_pos = y;
	}
	
	//Simulate a roll of a die
	void roll(){
		face = int(random(1, 7));
	}
	
	/*
	  Use the randomly assigned roll value to draw the face of a die
	*/
	void show(){
  		rect(x_pos, y_pos, 100, 100, 10);
      fill(0);
      if(face == 1){
        ellipse(x_pos + 50, y_pos + 50, 15, 15);
        counter += 1;
      }
      if(face == 2){
        ellipse(x_pos + 25, y_pos + 25, 15, 15);
        ellipse(x_pos + 75, y_pos + 75, 15, 15);
        counter += 2;
      }
      if(face == 3){
        ellipse(x_pos + 25, y_pos + 25, 15, 15);
        ellipse(x_pos + 75, y_pos + 75, 15, 15);
        ellipse(x_pos + 50, y_pos + 50, 15, 15);
        counter += 3;
      }
      if(face == 4){
        ellipse(x_pos + 25, y_pos + 25, 15, 15);
        ellipse(x_pos + 75, y_pos + 75, 15, 15);
        ellipse(x_pos + 75, y_pos + 25, 15, 15);
        ellipse(x_pos + 25, y_pos + 75, 15, 15);
        counter += 4;
      }
      if(face == 5){
        ellipse(x_pos + 25, y_pos + 25, 15, 15);
        ellipse(x_pos + 75, y_pos + 75, 15, 15);
        ellipse(x_pos + 75, y_pos + 25, 15, 15);
        ellipse(x_pos + 25, y_pos + 75, 15, 15);
        ellipse(x_pos + 50, y_pos + 50, 15, 15);
        counter += 5;
      }
      if(face == 6){
        ellipse(x_pos + 25, y_pos + 25, 15, 15);
        ellipse(x_pos + 75, y_pos + 75, 15, 15);
        ellipse(x_pos + 75, y_pos + 25, 15, 15);
        ellipse(x_pos + 25, y_pos + 75, 15, 15);
        ellipse(x_pos + 25, y_pos + 50, 15, 15);
        ellipse(x_pos + 75, y_pos + 50, 15, 15);
        counter += 6;
      }
      fill(255, 255, 255); 
  	}
  }
