// Title: Drawing House
// Author: amirasabdu
// Created: July 1, 2019, 7:51 p.m.
// URL: https://lti-adx.adelaide.edu.au/think.create.code/processingjs/s/97076/

// Adjusting canvas ____________________________________

size(480,360);
background(255);
//______________________________________________________


// Drawing background __________________________________

noStroke();
fill(129,176,250);
rect(30,30,width-60,height-150);

fill(64,173,59,180);
ellipse(90,250,90,90);
ellipse(390,250,60,60);

fill(238,120);
ellipse(100,60,90,30);
ellipse(120,80,60,30);
ellipse(150,75,45,15);

fill(64,193,59);
rect(30,height-120,width-60,90);
//_____________________________________________________


// Drawing the house ____________________________________

fill(205,205,120);
beginShape();
vertex(120,150);
vertex(120,270);
vertex(360,270);
vertex(360,150);
vertex(240,90);
endShape(CLOSE);

fill(24,0,0);
beginShape();
vertex(105,158);
vertex(97,142);
vertex(240,70);
vertex(383,142);
vertex(375,157);
vertex(240,90);
endShape(CLOSE);

rect(310,75,40,10);
fill(65,0,0);
beginShape();
vertex(315,85);
vertex(345,85);
vertex(345,123);
vertex(315,108);
endShape(CLOSE);

fill(25,0,0);
rect(150,170,60,100);
rect(240,170,90,60);

fill(124,0,0);
rect(155,175,50,90);
rect(245,175,80,50);

fill(216,206,225);
rect(160,180,25,70);
rect(190,180,10,70);
rect(250,180,33,40);
rect(287,180,33,40);

int d=163;
stroke(0,60);
strokeWeight(2);
line(d,185,d,245);
d=d+3;
line(d,185,d,245);
d=d+3;
line(d,185,d,245);
d=d+3;
line(d,185,d,245);
d=d+3;
line(d,185,d,245);
d=d+3;
line(d,185,d,245);
d=d+3;
line(d,185,d,245);

d=d+10;
line(d,185,d,245);
d=d+3;
line(d,185,d,245);
d=d+3;
line(d,185,d,245);


int e = 253;
line(e,182,e,218);
e = e +3;
line(e,182,e,218);
e = e +3;
line(e,182,e,218);
e = e +3;
line(e,182,e,218);
e = e +3;
line(e,182,e,218);
e = e +3;
line(e,182,e,218);
e = e +3;
line(e,182,e,218);
e = e +3;
line(e,182,e,218);
e = e +3;
line(e,182,e,218);
e = e +3;
line(e,182,e,218);
e = e +3;
line(e,182,e,218);
e = e +3;
line(e,182,e,218);
e = e +3;
line(e,182,e,218);
e = e +3;
line(e,182,e,218);
e = e +3;
line(e,182,e,218);
e = e +3;
line(e,182,e,218);
e = e +3;
line(e,182,e,218);
e = e +3;
line(e,182,e,218);
e = e +3;
line(e,182,e,218);
e = e +3;
line(e,182,e,218);
e = e +3;
line(e,182,e,218);
e = e +3;
line(e,182,e,218);
e = e +3;
line(e,182,e,218);

stroke(0);
strokeWeight(6);
line(90,270,390,270);
//_______________________________________________


// Drawing fence __________________________________

noStroke();
fill(115,60,60);

int u = 255;
rect(235,u,180,5);
rect(55,u,80,5);
u = u+35;
rect(235,u,180,5);
rect(55,u,80,5);

int h=240;
rect(h,245,10,60);
h=h+20;
rect(h,245,10,60);
h=h+20;
rect(h,245,10,60);
h=h+20;
rect(h,245,10,60);
h=h+20;
rect(h,245,10,60);
h=h+20;
rect(h,245,10,60);
h=h+20;
rect(h,245,10,60);
h=h+20;
rect(h,245,10,60);
h=h+20;
rect(h,245,10,60);

int w=60;
rect(w,245,10,60);
w=w+20;
rect(w,245,10,60);
w=w+20;
rect(w,245,10,60);
w=w+20;
rect(w,245,10,60);
//____________________________________________________


//Drawing the picture frame  _________________________

stroke(0,202);
strokeWeight(6);
line(30,15,30,height-15);
line(width-30,15,width-30,height-15);
line(15,30,width-15,30);
line(15,height-30,width-15,height-30);

strokeWeight(20);
stroke(0);
point(30,30);
point(width-30,height-30);
point(30,height-30);
point(width-30,30);
//____________________________________________________// Title: Drawing House
// Author: amirasabdu
// Created: July 1, 2019, 7:51 p.m.
// URL: https://lti-adx.adelaide.edu.au/think.create.code/processingjs/s/97076/

// Adjusting canvas ____________________________________

size(480,360);
background(255);
//______________________________________________________


// Drawing background __________________________________

noStroke();
fill(129,176,250);
rect(30,30,width-60,height-150);

fill(64,173,59,180);
ellipse(90,250,90,90);
ellipse(390,250,60,60);

fill(238,120);
ellipse(100,60,90,30);
ellipse(120,80,60,30);
ellipse(150,75,45,15);

fill(64,193,59);
rect(30,height-120,width-60,90);
//_____________________________________________________


// Drawing the house ____________________________________

fill(205,205,120);
beginShape();
vertex(120,150);
vertex(120,270);
vertex(360,270);
vertex(360,150);
vertex(240,90);
endShape(CLOSE);

fill(24,0,0);
beginShape();
vertex(105,158);
vertex(97,142);
vertex(240,70);
vertex(383,142);
vertex(375,157);
vertex(240,90);
endShape(CLOSE);

rect(310,75,40,10);
fill(65,0,0);
beginShape();
vertex(315,85);
vertex(345,85);
vertex(345,123);
vertex(315,108);
endShape(CLOSE);

fill(25,0,0);
rect(150,170,60,100);
rect(240,170,90,60);

fill(124,0,0);
rect(155,175,50,90);
rect(245,175,80,50);

fill(216,206,225);
rect(160,180,25,70);
rect(190,180,10,70);
rect(250,180,33,40);
rect(287,180,33,40);

int d=163;
stroke(0,60);
strokeWeight(2);
line(d,185,d,245);
d=d+3;
line(d,185,d,245);
d=d+3;
line(d,185,d,245);
d=d+3;
line(d,185,d,245);
d=d+3;
line(d,185,d,245);
d=d+3;
line(d,185,d,245);
d=d+3;
line(d,185,d,245);

d=d+10;
line(d,185,d,245);
d=d+3;
line(d,185,d,245);
d=d+3;
line(d,185,d,245);


int e = 253;
line(e,182,e,218);
e = e +3;
line(e,182,e,218);
e = e +3;
line(e,182,e,218);
e = e +3;
line(e,182,e,218);
e = e +3;
line(e,182,e,218);
e = e +3;
line(e,182,e,218);
e = e +3;
line(e,182,e,218);
e = e +3;
line(e,182,e,218);
e = e +3;
line(e,182,e,218);
e = e +3;
line(e,182,e,218);
e = e +3;
line(e,182,e,218);
e = e +3;
line(e,182,e,218);
e = e +3;
line(e,182,e,218);
e = e +3;
line(e,182,e,218);
e = e +3;
line(e,182,e,218);
e = e +3;
line(e,182,e,218);
e = e +3;
line(e,182,e,218);
e = e +3;
line(e,182,e,218);
e = e +3;
line(e,182,e,218);
e = e +3;
line(e,182,e,218);
e = e +3;
line(e,182,e,218);
e = e +3;
line(e,182,e,218);
e = e +3;
line(e,182,e,218);

stroke(0);
strokeWeight(6);
line(90,270,390,270);
//_______________________________________________


// Drawing fence __________________________________

noStroke();
fill(115,60,60);

int u = 255;
rect(235,u,180,5);
rect(55,u,80,5);
u = u+35;
rect(235,u,180,5);
rect(55,u,80,5);

int h=240;
rect(h,245,10,60);
h=h+20;
rect(h,245,10,60);
h=h+20;
rect(h,245,10,60);
h=h+20;
rect(h,245,10,60);
h=h+20;
rect(h,245,10,60);
h=h+20;
rect(h,245,10,60);
h=h+20;
rect(h,245,10,60);
h=h+20;
rect(h,245,10,60);
h=h+20;
rect(h,245,10,60);

int w=60;
rect(w,245,10,60);
w=w+20;
rect(w,245,10,60);
w=w+20;
rect(w,245,10,60);
w=w+20;
rect(w,245,10,60);
//____________________________________________________


//Drawing the picture frame  _________________________

stroke(0,202);
strokeWeight(6);
line(30,15,30,height-15);
line(width-30,15,width-30,height-15);
line(15,30,width-15,30);
line(15,height-30,width-15,height-30);

strokeWeight(20);
stroke(0);
point(30,30);
point(width-30,height-30);
point(30,height-30);
point(width-30,30);
//____________________________________________________
