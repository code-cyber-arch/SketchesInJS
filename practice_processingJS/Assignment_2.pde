// Title: Section 3 - Assignment 2
// Author: amirasabdu
// Created: June 17, 2020, 2:12 a.m.
// URL: https://lti-adx.adelaide.edu.au/think.create.code/processingjs/s/103678/

size(640, 480);
background(255);

// Assign Variables ________________________________________________
int a = 28;
int b = 48;
int c = 36;
int d = 12;
int e = 42;
int f = 36;
int g = 20;
int h = 44;
int i = 30;
int j = 26;
int[] dataValue = {a, b, c, d, e, f, g, h, i, j};

int    grid = 14;
float  xGrid = width/grid;
float  yGrid = height/grid;

float  barFactor = (10 * xGrid)/50;
int    fillBlue = 55;
float  barStartX = 2 * xGrid;
float  barStartY = 2 * yGrid;
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
//____________________________________________________________________



// Drawing grid lines to guid bar information ________________________
stroke(218);
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
  float barF = map(dataValue[t], 0, 50, 0, 10 * xGrid);
  stroke(255, 192);
  strokeWeight(3);
  fill(0, 0, fillBlue, 222);
  rect(barStartX, barStartY, barF, yGrid);
  barStartY = barStartY + yGrid;
  fillBlue = fillBlue + 20;
}
//___________________________________________________________________________________________



// Adding text and lebling __________________________________________________________________
int countScale = 0;
for (float xText = 3 * xGrid; xText <= 12 * xGrid; xText = xText + xGrid){
  countScale = countScale + 5;
  fill(0);
  textSize(15);
  textAlign(CENTER);
  text(countScale, xText, 12.65 * yGrid);
}

char barLeble = 'A';
for (float yText = 2.7 * yGrid; yText <= 12 * yGrid; yText = yText + yGrid){
  fill(0);
  textSize(15);
  textAlign(CENTER);
  text(barLeble, 1.65 * xGrid, yText);
  barLeble ++;
}
//___________________________________________________________________________________________



// Draw mean line in red color with transparency ____________________________________________
stroke(255, 0, 0, 172);
strokeWeight(2);
strokeCap(SQUARE);
line((mean * barFactor) + 2 * xGrid, 2 * yGrid, (mean * barFactor) + 2 * xGrid, 12*yGrid);
//___________________________________________________________________________________________



// Draw axis lines __________________________________________________________________________
stroke(0);
strokeWeight(4);
strokeCap(SQUARE);
line(2 * xGrid, yGrid, 2 * xGrid, 13 * yGrid);
line(xGrid, 12 * yGrid, 13 * xGrid, 12 * yGrid);
//___________________________________________________________________________________________
