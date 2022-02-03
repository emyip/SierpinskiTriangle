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

public void sierpinski(int myX, int myY,int len){
  int x = myX - ( len / 4 );
  int y = myY + (len / 4);
    if(len <= 20){
    fill(255, 192, 203);
    triangle(x, y,x+len, y, x +len/2,y-len);
  }
  else{
    sierpinski(x,y,len/2);
    sierpinski(x+len/2, y, len/2);
    sierpinski(x+len/4, y-len/2, len/2);
    
  }
  
}
