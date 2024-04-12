// Title: Section 5 Assignment Part 3
// Author: amirasabdu
// Created: June 20, 2020, 6:29 a.m.
// URL: https://lti-adx.adelaide.edu.au/think.create.code/processingjs/s/103853/

size(400,400);
background(248);
//________________________________________________________________



// Variable assignment ___________________________________________
int     ellipseGrid = 4;
float   xDiv = width/ellipseGrid;
float   yDiv = height/ellipseGrid;
int     countEllipse = 1;
int     subEllipse = 1;
float   gridShift = 0;
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



//_____________________________________________________________________
for(float i = xDiv/2; i < width; i = i + xDiv) {
  for(float j = gridShift + (yDiv/2); subEllipse <= ellipseGrid; j = j + yDiv) {
    
    noStroke();
    if (countEllipse % 2 == 0) {
      fill(0,0,255);
    } else {
      fill(255,0,0);
    }
    
    ellipse(i,j,xDiv,yDiv);
    
    textAlign(CENTER);
    fill(0);
    text(countEllipse,i,j);
    countEllipse ++;
    subEllipse ++;
  }
  
  ellipseGrid = ellipseGrid - 1;
  subEllipse=1;
  gridShift = gridShift + (yDiv/2);
}
//_______________________________________________________________________________________________
