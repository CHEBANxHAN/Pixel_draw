int cols = 16;
int rows = 16;
int siz = 20;
int x = 100;
int y = 100;
Pix obj[][] = new Pix[cols][rows];

void setup() {
  size(1000, 500);
  for(int i = 0; i < cols; i++) {
    for(int j = 0; j < rows; j++) {
      obj[i][j] = new Pix(x+siz*i, y+siz*j);
    }
  }
}

void draw() {
  for(int i = 0; i < cols; i++){
    for(int j = 0; j < rows; j++){
      obj[i][j].pix();
    }
  }
}

class Pix{
  int value;
  boolean flag = false;
  int siz = 20;
  int x_coords, y_coords;
  Pix(int x, int y){
    x_coords = x;
    y_coords = y;
  }
  void pix() {
    fill(value);
    rect(x_coords, y_coords, siz, siz);
    
    
    if(mouseX > x_coords && mouseX < x_coords+siz && mouseY > y_coords && mouseY < y_coords+siz) {
        if(mousePressed && mouseButton == LEFT && flag == false) {
          flag = true;
          value = 255;
          print(value);
          delay(100);
        }
        else if(mousePressed && mouseButton == LEFT && flag == true) {
          flag = false;
          value = 0;
          print(value);
          delay(100);
        }
    }
  }
}
