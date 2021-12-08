void setup(){
  size(900, 900);
}

//set the lenght of the line
float x = 300;
//ad y value to the line to add variations
float y = 300;
float angle;

void draw(){
  background(#000000);
  //moving the origin to the center of the window
  translate(width/2, height/2);
  //rotate everything
  rotate(radians(angle));
  //for loop to rotate the line
  for (float a=0; a<360; a+=6){
    pushMatrix();
    rotate(radians(a/1.5));
    stroke(a, a*2, a*3);
    strokeWeight(2);
    //move the lines by changing x value with sin function
    line(x*sin(radians(angle)), 0, 0, y);
    popMatrix();
  }
  angle++;
  for (float b=0; b<120; b+=6){
    pushMatrix();
    rotate(radians(b/1.5));
    stroke(b*3, b*2, b);
    strokeWeight(2);
    //move the lines by changing x value with sin function
    line(x*sin(radians(angle)), 0, 0, y);
    popMatrix();
  }
  angle++;
}
