//GIF Project
//Sophia Bi 1-4
//April 18 2020

int n;
ArrayList <PImage> gif;

void setup () {
  size (800, 800);
  gif = new ArrayList <PImage> ();
  n = 0;
  int i = 0;
  int sec = 0;
  int onds = 7;
  while (i < 6) {
    if (i == 3 || i == 5) 
      {sec = 1; onds = 4; }
     else { sec = 0; onds = 7; }
  gif.add(loadImage ("frame_" + i + "_delay-0." + sec + onds +"s.gif"));
  i++;
  }
  frameRate (20);
}

void draw() {
 PImage frame = gif.get(n); 
  image (frame, 0, 0, width, height);
  n++;
  if (n > 5) n = 0;
}
