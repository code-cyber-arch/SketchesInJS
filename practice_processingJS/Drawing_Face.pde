// Title: Drawing Face
// Author: amirasabdu
// Created: June 19, 2019, 6:19 a.m.
// URL: https://lti-adx.adelaide.edu.au/think.create.code/processingjs/s/96720/

size(480,480);
rect(width-460, height-460, width-40, height-40);

// Draw ear
ellipse((width/2)+120, height/2, 60,90);
ellipse((width/2)-120, height/2, 60,90);

// Draw face outline
ellipse(width/2, height/2, 240, 360);

// Draw eye
ellipse((width/2)+45, (height/2)-45, 60, 90);
ellipse((width/2)-45, (height/2)-45, 60, 90);

ellipse((width/2)+45, (height/2)-30, 10, 20);
ellipse((width/2)-45, (height/2)-30, 10, 20);

// Draw nose
ellipse(width/2, (height/2)+45, 45, 45);
ellipse(width/2, (height/2)+55, 10, 10);

// Draw mouth
ellipse(width/2, (height/2)+105, 90, 20);
line((width/2)-15, (height/2)+105, (width/2)+15, (height/2)+105);
