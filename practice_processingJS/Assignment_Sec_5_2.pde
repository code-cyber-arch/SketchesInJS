// Title: Section 5 Assignment Part 2
// Author: amirasabdu
// Created: June 20, 2020, 6:27 a.m.
// URL: https://lti-adx.adelaide.edu.au/think.create.code/processingjs/s/103850/

size(400,400);
background(242);
//________________________________________________________________


// Variable assignment ___________________________________________
int     ellipseGrid = 5;
float   xDiv = width/ellipseGrid;
float   yDiv = height/ellipseGrid;
int     colorFill = 1;
int     countEllipse = 1;
int     subEllipse = 1;
//_______________________________________________________________


// Draw grid using ellipse grid _________________________________
stroke(228);
for (float x = xDiv; x < width; x += xDiv){
  for (float y = yDiv; y < height; y += yDiv){
    line(0, y, width, y);
  }
  line(x, 0, x, height);
}
//______________________________________________________________



for(float j = yDiv/2; j < height; j = j + yDiv) {
    for(float i = xDiv/2; subEllipse <= ellipseGrid; i = i + xDiv) {
      
      noStroke();
      if (colorFill % 2 == 1) {
         fill(0, 0, 255);
       } else {
         fill(255, 0, 0);
       }
      
      ellipse(i, j, xDiv, yDiv);
        
      textAlign(CENTER);
      fill(0);
      textSize(14);
      text(countEllipse, i, j);
      countEllipse ++;
      subEllipse ++;
    }
    colorFill ++;
    ellipseGrid = ellipseGrid - 1;
    subEllipse = 1;
}
//_______________________________________________________________
