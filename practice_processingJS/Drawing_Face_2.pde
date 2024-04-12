// Title: Drawing Face 2
// Author: amirasabdu
// Created: June 19, 2019, 6:40 a.m.
// URL: https://lti-adx.adelaide.edu.au/think.create.code/processingjs/s/96723/

size(480,480);

// Draw background
rect(width-460, height-460, width-40, height-40);

// Drawing ear
fill(0);
ellipse((width/2)+120, height/2, 60, 90);
ellipse((width/2)-120, height/2, 60, 90);

// Draw face outline
fill(238);
ellipse(width/2, height/2, 240, 360);

// Draw eyes
fill(212);
ellipse((width/2)+45, (height/2)-45, 60, 90);
ellipse((width/2)-45, (height/2)-45, 60, 90);
fill(0);
ellipse((width/2)+45, (height/2)-30, 15, 30);
ellipse((width/2)-45, (height/2)-30, 15, 30);
fill(212);
ellipse((width/2)+45, (height/2)-30, 5, 5);
ellipse((width/2)-45, (height/2)-30, 5, 5);

// Draw nose
fill(255);
ellipse(width/2, (height/2)+45, 45, 45);
fill(0);
ellipse(width/2, (height/2)+55, 10, 10);

// Draw mouth
fill(128);
strokeWeight(10);
line((width/2)-30, (height/2)+105, (width/2)+30, (height/2)+105);
