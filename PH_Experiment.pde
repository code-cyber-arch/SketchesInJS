// Title: Problem 3: Analysis and visualisation
// Author: amirasabdu
// Created: Nov. 22, 2020, 2:12 p.m.
// URL: https://lti-adx.adelaide.edu.au/think.create.code/processingjs/s/107920/

// Store and input data
float[][] data = {
  {7.2,7.5,7.6,7.5,7.5,7.4,7.1,7.0,7.0,6.9,6.9,7.1,7.2,7.3,7.1,7.1,7.0,7.2,7.3,7.3},
  {7.4,7.4,7.5,7.3,7.6,7.5,7.5,7.4,7.3,7.3,7.2,7.4,7.5,7.5,7.5,7.4,7.2,7.3,7.5,7.6},
  {7.4,7.5,7.5,7.6,7.6,7.5,7.4,7.5,7.8,7.5,7.5,7.6,7.8,7.8,7.4,7.8,7.9,7.4,7.5,7.5}};
int[] time = {0,5,10,15,20,25,30,35,40,45,50,55,60,65,70,75,80,85,90,95};
String[] title = {"Exp 1", "Exp 2", "Exp 3"};
String[] analysis = {"Ave.", "Max.", "Min."};

// Creating Average function
float average(float[] data){
    float sum = 0;
    for(int i = 0; i < data.length; i++){
        sum += data[i];
    }
    float ave = (float)sum/data.length;
    return ave;
}

// Creating average data array for multidimensional array input
float[] averageData(float[][] arrayData){
    float[] newArr={};
    for (int i = 0; i < arrayData.length; i++){
        newArr = append(newArr,average(arrayData[i]));
    }
    return newArr;
}

// Creating Maximum Function
float maximum(float[] data){
    float max = data[0];
    for(int i = 0; i < data.length; i++){
        if(data[i] > max){
            max = data[i];
        }
    }
    return max;
}

// Creating maximum data array for multidimensional array input
float[] maximumData(float[][] arrayData){
    float[] newArr={};
    for (int i = 0; i < arrayData.length; i++){
        newArr = append(newArr,maximum(arrayData[i]));
    }
    return newArr;
}

// Creating Minimum Function
float minimum(float[] data){
    float min = data[0];
    for(int i = 0; i < data.length; i++){
        if(data[i] < min){
            min = data[i];
        }
    }
    return min;
}

// Creating minimum data array for multidimensional array input
float[] minimumData(float[][] arrayData){
    float[] newArr={};
    for (int i = 0; i < arrayData.length; i++){
        newArr = append(newArr,minimum(arrayData[i]));
    }
    return newArr;
}

// setup canvas and canvas properties
void setup(){
  size(960, 480);
  background(255);
  smooth();
}

// Draw and Visualize the data
void draw(){
  
  // Grid line and text properties
  int divider = 26;
  float xDiv = width/divider;
  float yDiv = height/divider;
  textSize(0.35*xDiv);
  strokeWeight(1);
  
  // Draw Table
  for (int i=0; i<data[0].length+3; i++){
    pushStyle();
    strokeWeight(1);
    stroke(255);
    fill(236);
    rect((i+2)*xDiv, 4*yDiv, 1*xDiv, yDiv);
    popStyle();
  }
  
  for (int i=0; i<data.length+1; i++){
    pushStyle();
    strokeWeight(1);
    stroke(255);
    fill(236);
    rect(xDiv, (4+i)*yDiv, 1*xDiv, yDiv);
    popStyle();
  }
  
  // Draw main table with color background
  for (int i=0; i<data[0].length+3; i++){
    for (int j=0; j<data.length; j++){
      pushStyle();
      strokeWeight(1);
      stroke(255);
      if (j==0){
        fill(255, 202, 202);
      } else if (j==1){
        fill(202,255,202);
      } else {
        fill(202,202,255);
      }
      rect((i+2)*xDiv, (5+j)*yDiv, 1*xDiv, yDiv);
      popStyle();
    }
  }
  
  // Table line
  pushStyle();
  noFill();
  rect(xDiv, 4*yDiv, 24*xDiv, 5*yDiv);
  popStyle();
  
  // Display data
  for (int i=0; i<data[0].length; i++){
    pushStyle();
    textAlign(RIGHT);
    fill(0);
    for (int j=0; j<data.length; j++){
      text(nf(data[j][i], 0, 0), (i+2.85)*xDiv, (5.85+j)*yDiv);
      pushStyle();
      fill(255, 0,0);
      text(title[j], (2)*xDiv, (5.85+j)*yDiv);
      popStyle();
    }
    fill(255,0,0);
    text(time[i], (i+2.85)*xDiv, (4.85)*yDiv);
    text("Time", 2*xDiv, (4.85)*yDiv);
    popStyle();
    
    pushStyle();
    fill(0);
    textSize(0.6*xDiv);
    text("PH Experiment", xDiv, (3)*yDiv);
    line(xDiv, 3.25*yDiv, 25*xDiv, 3.25*yDiv);
    popStyle();
  }
  
  // Display analysis
  for (int i=0; i<data.length; i++){
    pushStyle();
    textAlign(RIGHT);
    fill(255, 0, 0);
    text(analysis[i], (23+i)*xDiv, (8.85)*yDiv);
    text(nf(average(data[i]), 0, 2), (23)*xDiv, (5.85+i)*yDiv);
    text(nf(maximum(data[i]), 0, 2), (24)*xDiv, (5.85+i)*yDiv);
    text(nf(minimum(data[i]), 0, 2), (25)*xDiv, (5.85+i)*yDiv);
    popStyle();
  }
  
  // Display overall analysis
  pushStyle();
  fill(0);
  float[] averageArray = averageData(data);
  float[] maximumArray = maximumData(data);
  float[] minimumArray = minimumData(data);
  text("Overall Average = " + nf(average(averageArray), 0, 2), (4)*xDiv, (9.85)*yDiv);
  text("Overall Maximum = " + nf(maximum(maximumArray), 0, 2), (10)*xDiv, (9.85)*yDiv);
  text("Overall Minimum = " + nf(minimum(minimumArray), 0, 2), (16)*xDiv, (9.85)*yDiv);
  popStyle();
  
  // Grid and Text of the graph
  for (int i=1; i<9; i++){
    pushStyle();
    stroke(212);
    line(1.25*xDiv, (24*yDiv)-(i*1.5*yDiv), 25.75*xDiv, (24*yDiv)-(i*1.5*yDiv));
    popStyle();
    
    pushStyle();
    fill(0);
    text(i, xDiv, (24.25*yDiv)-(i*1.5*yDiv));
    popStyle();
  }
  
  // Draw graph
  for (int i=0; i<data[0].length; i++){
    pushStyle();
    stroke(255);

    float map_data = map(data[0][i], 0, 8, 0, 12*yDiv);
    float map_data2 = map(data[1][i], 0, 8, 0, 12*yDiv);
    float map_data3 = map(data[2][i], 0, 8, 0, 12*yDiv);
    fill(255,0,0);
    rect((1.75+i*1.2)*xDiv, 24*yDiv, 0.25*xDiv, -map_data);
    fill(0,255,0);
    rect((2+i*1.2)*xDiv, 24*yDiv, 0.25*xDiv, -map_data2);
    fill(0,0,255);
    rect((2.25+i*1.2)*xDiv, 24*yDiv, 0.25*xDiv, -map_data3);
    popStyle();
    pushStyle();
    textAlign(CENTER);
    fill(0);
    text(time[i], (2.125+i*1.2)*xDiv, 25*yDiv);
    text("PH", 1.15*xDiv, 11*yDiv);
    text("Time in Min", 2.75*xDiv, 26*yDiv);
    popStyle();
  }
  
  // Graph line
  line(0.75*xDiv, 24*yDiv, 26*xDiv, 24*yDiv);
  line(1.5*xDiv, 11*yDiv, 1.5*xDiv, 25*yDiv);
}
