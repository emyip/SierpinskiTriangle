int x = 400;
int y = 400;
int len = 800;
void setup(){
  size(800,800);
}
void draw(){
  background(0);
  sierpinski(x,y,len);
}
void mouseDragged(){
}

public void sierpinski(int myX, int myY,int len){
  int x = myX - ( len / 4 );
  int y = myY + (len / 4);
    if(len <= 10){
    int purple, blue, pink;
    int randomColor = (int)(Math.random()*3);
    pink = color(255, 192, 203);
    blue = color(18, 105, 199);
    purple = color(156, 81, 182);
    if (randomColor == 0) {
      fill(pink);
    } else if (randomColor == 1) {
      fill(blue);
    } else {
      fill(purple);
    }
    triangle(x*mouseX, y*mouseY,x+len, y, x +len/2,y-len);
  }
  else{
    sierpinski(x,y,len/2);
    sierpinski(x+len/2, y, len/2);
    sierpinski(x+len/4, y-len/2, len/2);
    
  }
  
}
