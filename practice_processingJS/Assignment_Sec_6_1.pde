// Title: Section 6 Assignment Part 1
// Author: amirasabdu
// Created: June 21, 2020, 12:29 p.m.
// URL: https://lti-adx.adelaide.edu.au/think.create.code/processingjs/s/103901/

size(200, 200);
background(255);

// Declaring Variables
int n = 7;
int factorial = 1;

// Calculating factorial
for(int i = 1; i < n+1; i++){
  factorial = factorial * i;
}

// Printing text on Canvas
fill(0);
text(n + "  Factorial = " + factorial, 45, 100);
