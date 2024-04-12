// Title: Section 7 assignment
// Author: amirasabdu
// Created: June 22, 2020, 5:54 a.m.
// URL: https://lti-adx.adelaide.edu.au/think.create.code/processingjs/s/103936/

size(500,480);
background(255);
fill(0);


// Declaring array varialble
int noPerson=20;
int[] personAge = new int[noPerson];
float[] personHeight = new float[noPerson];


// Styling Table and bourder lines
for (int i=30; i<350; i=i+150){
    fill(180, 90);
    noStroke();
    rect(i, 25, 130, 425);
}

    fill(0);
    text("Random Data", 30, 20);
    text("Sort By Age", 180, 20);
    text("Sort By Height", 330, 20);

fill(255,120,0);
for (int i=50; i<450; i=i+150){
    text("Age", i, 40);
    text("Height(m)", i+50,40);
}

stroke(200);
for (int i=30; i<350; i=i+150){
    line(i, 45, i+130, 45);
    line(i+50, 25, i+50, 450);
}


// Generating random data
for (int i=0; i<noPerson; i++){
  personAge[i] = int(random(16,75));
  personHeight[i] = random(1.40,2.10);
  
  fill(90);
  text(personAge[i], 50, 20*(i+3));
  text(nf(personHeight[i], 0, 2), 100, 20*(i+3));
}

// Sorting by age
for (int i=0; i<noPerson; i++){
  minIndex=i;
  for (int j=i+1; j<noPerson; j++){
    if (personAge[j] < personAge[minIndex]){
      minIndex=j;
    }
  }
  
  temp=personAge[i];
  personAge[i]=personAge[minIndex];
  personAge[minIndex]=temp;
  
  temp=personHeight[i];
  personHeight[i]=personHeight[minIndex];
  personHeight[minIndex]=temp;
  
  fill(90);
  text(personAge[i], 200, 20*(i+3));
  text(nf(personHeight[i], 0, 2), 250, 20*(i+3));
}

// Sorting By Height
for (int i=0; i<noPerson; i++){
  minIndex=i;
  for (int j=i+1; j<noPerson; j++){
    if (personHeight[j] < personHeight[minIndex]){
      minIndex=j;
    }
  }
  
  temp=personAge[i];
  personAge[i]=personAge[minIndex];
  personAge[minIndex]=temp;
  
  temp=personHeight[i];
  personHeight[i]=personHeight[minIndex];
  personHeight[minIndex]=temp;
  
  fill(90);
  text(personAge[i], 350, 20*(i+3));
  text(nf(personHeight[i], 0, 2), 400, 20*(i+3));
}
