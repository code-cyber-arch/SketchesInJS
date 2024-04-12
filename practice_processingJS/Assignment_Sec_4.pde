// Title: Section 4 assignment
// Author: amirasabdu
// Created: June 21, 2020, 12:13 p.m.
// URL: https://lti-adx.adelaide.edu.au/think.create.code/processingjs/s/103898/

size(540, 360);
background(255);

// Assign Variables ________________________________________________
int a = 45;
int b = 38;
int c = 85;
int d = 76;
int e = 97;
int f = 27;
int g = 90;
int h = 72;
int i = 63;
int j = 77;
int[] dataValue = {a, b, c, d, e, f, g, h, i, j};

int    grid = 14;
float  xGrid = width/grid;
float  yGrid = height/grid;

float  barFactor = (10 * yGrid)/100;
float  barStartX = 2 * xGrid;
//___________________________________________________________________



// Calculating the mean value as floating point number ______________
int   sum = (a + b + c + d + e + f + g + h + i + j);
float mean = sum/10.0;
println(mean);
//___________________________________________________________________



// Drawing almost hidden canvas grid ________________________________
stroke(248);
for (float x = 0; x < width; x = x + xGrid){
  for (float y = 0; y < height; y = y + yGrid){
    line(0, y, width, y);
  }
  line(x, 0, x, height);
}

pushStyle();
fill(250);
rect(2 * xGrid, 2 * yGrid, 10 * xGrid, 10 * yGrid);
popStyle();
//____________________________________________________________________



// Drawing grid lines to guid bar information ________________________
stroke(214);
strokeWeight(1);
for (float x = 2 * xGrid; x <= 12 * xGrid; x = x + xGrid){
  for (float y = 2 * yGrid; y <= 12 * yGrid; y = y + yGrid){
    line(2 * xGrid, y, 12 * xGrid, y);
  }
  line(x , 2 * yGrid, x, 12 * yGrid);
}
//_____________________________________________________________________



// Darwing bar _________________________________________________________
for (int t = 0; t < 10 ; t++){
  float barF = map(dataValue[t], 0, 100, 0, 10 * yGrid);
  stroke(255, 180);
  strokeWeight(4);
  int fillEven = int(dataValue[t] * 2 + 55);
  int fillOdd = int(dataValue[t] * 2 + 55);
  if (dataValue[t] % 2 == 0){
    fill(0, fillEven, 0, 222);
  } else {
    fill(fillOdd, 0, 0, 222);
  }
  
  rect(barStartX, 12 * yGrid, xGrid, -barF);
  barStartX = barStartX + xGrid;
}
//___________________________________________________________________________________________



// Adding text and lebling __________________________________________________________________
int countScale = 100;
for (float yText = 2.1 * yGrid; yText < 12 * yGrid; yText = yText + 2*yGrid){
  fill(0);
  textSize(15);
  textAlign(CENTER);
  text(countScale, 1.5*xGrid, yText);
  countScale = countScale - 20;
}

char barLeble = 'A';
for (float xText = 2.5 * xGrid; xText <= 12 * xGrid; xText = xText + xGrid){
  fill(0);
  textSize(15);
  textAlign(CENTER);
  text(barLeble, xText, 12.7*yGrid);
  barLeble ++;
}
//____________________________________________________________________________________________



// Draw mean line in color ___________________________________________________________________
stroke(245, 122, 12);
strokeWeight(4);
strokeCap(SQUARE);
line(2 * xGrid, 12 * yGrid - (mean * barFactor), 12 * xGrid, 12 * yGrid - (mean * barFactor));
//____________________________________________________________________________________________



// Draw axis lines ___________________________________________________________________________
stroke(0);
strokeWeight(4);
strokeCap(SQUARE);
line(2 * xGrid, yGrid, 2 * xGrid, 13 * yGrid);
line(xGrid, 12 * yGrid, 13 * xGrid, 12 * yGrid);
//____________________________________________________________________________________________
