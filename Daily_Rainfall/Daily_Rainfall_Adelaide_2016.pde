// Title: Daily Rainfall Adelaide - 2016 - Kent Town Station
// Author: Abdurahman Mehammedsied
// Created: Nov. 19, 2020, 5:25 a.m.
// URL: https://lti-adx.adelaide.edu.au/think.create.code/processingjs/s/107959/

// Data input
String rainData = "0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0.2, 0, 0, 0, 0, 0, 0, 0, 0.4, 0.2, 8, 7.6, 0, 0, 0, 0, 0, 17.8, 18.6, 0, 0, 13.2, 4.8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0.4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0.2, 21.6, 0, 0, 20, 2.4, 0, 0, 0, 0, 0, 0, 8, 0.4, 0, 0, 0, 0, 0, 1.2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4.6, 0.2, 0, 0, 0, 0.4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0.2, 0.2, 0, 0, 0, 0, 0, 0, 4, 0, 1.6, 0, 0.8, 5.2, 0, 0, 0, 0.4, 0.8, 16, 0.6, 4.6, 0.4, 0, 0, 0.6, 0.2, 0, 0, 0.2, 0, 0, 7.2, 0.4, 3.4, 24.2, 2.8, 17, 0, 1.2, 0.4, 0.2, 0.2, 18.4, 0, 0.2, 11.4, 1.6, 3.8, 5.2, 2.4, 1.8, 0, 0, 0, 0, 2.4, 4, 0, 0, 0.6, 3.8, 11.8, 2.6, 20, 0.6, 0, 2.6, 0, 0, 1.6, 2.6, 1.4, 0, 0.2, 37.6, 2.4, 1.6, 0, 0, 6.6, 1.4, 6, 7, 0.6, 0.2, 0, 0, 0, 0, 5, 0, 0.6, 4.2, 0, 11.4, 8.8, 10.4, 0.2, 0, 0, 3.8, 11, 1.8, 0, 0.4, 0, 0, 0, 0, 0.6, 3.6, 8.2, 0, 0, 0, 0, 0, 0.8, 0, 16.8, 7, 0.2, 0, 0, 0, 0, 0, 0, 0, 1.6, 5.8, 1, 0.2, 0.2, 0.4, 1, 0, 0, 0, 1.2, 30.4, 0.2, 0, 0, 6.2, 15.6, 16.6, 0, 0, 2.4, 0.4, 0.4, 1.6, 0, 0, 2.4, 2, 0, 0, 0, 37.8, 12.2, 4.2, 0, 27.6, 11.8, 0, 0, 0, 0, 0, 2, 0.4, 0.8, 0.6, 0, 0, 1.2, 14.2, 4.2, 3.8, 0, 9.4, 0.2, 0, 0, 0, 0, 0, 0, 0, 0, 0.6, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 14, 16.4, 1.8, 0, 0, 0, 0, 0, 0, 0, 0.8, 0.2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4.6, 0, 0, 8, 0.8, 0, 0, 0, 0, 0.4, 0, 0, 0.4, 0, 0, 2.2, 0, 0, 0, 0, 0, 0.2, 5.8, 61.2, 3, 0.2";
float[] splitRainday = float(split(rainData, ", "));

// Data Extraction -------------------------------------
float[] dataExtract(float[] arrayData){
    float[] newArr={};
    for (int i = 0; i < arrayData.length; i++){
        if (arrayData[i] != 0){
            newArr = append(newArr,arrayData[i]);
        }
    }
    return newArr;
}

// Calculating Mean Function ----------------------------
float mean(float[] arrayData){
    float sum = 0;
    for (int i = 0; i < arrayData.length; i++) {
        sum += arrayData[i];
    }
    return sum/arrayData.length;
}

// Calculating Median Function ---------------------------
float median(float[] arrayData){
    float[] sorted_data = sort(arrayData);
    float med;
    if (sorted_data.length%2 == 0){
        med = (sorted_data[sorted_data.length/2] + sorted_data[sorted_data.length/2 - 1])/2;
    }
    else{
        med = sorted_data[round(sorted_data.length/2-0.5)];
    }
    return med;
}

// Calculating Standard Deviation Function -------------------
float standardDeviation(float[] arrayData){
    float avg = mean(arrayData);
    float sumSquares = 0;
    for (int i = 0; i < arrayData.length; i++){
        sumSquares += pow(arrayData[i] - avg,2);
    }
    return sqrt(sumSquares/arrayData.length);
}

//Calculating Mode Value Function -------------------
float mode(float[] array) {
    float[] modeMap = new float [array.length];
    float maxEl = array[0];
    float maxCount = 1;
 
    for (int i = 0; i < array.length; i++) {
        float el = array[i];
        if (modeMap[int(el)] == 0) {
            modeMap[int(el)] = 1;
        } else {
            modeMap[int(el)]++;
        }
 
        if (modeMap[int(el)] > maxCount) {
            maxEl = el;
            maxCount = modeMap[int(el)];
        }
    }
    return maxEl;
}

// setup canvas
void setup(){
    size(640,360);
    background(255);
    smooth();
}

// Display and draw analysis
void draw(){
  
    // Preparing canvas grid guidlines 
    int divider = 30;
    float xDiv = width/divider;
    float yDiv = height/divider;
    
    // Sanitaise data
    float[] finalRaindata = dataExtract(splitRainday);
    
    // Draw graph lines
    for (int i=0; i<7; i++){
      pushStyle();
      strokeWeight(0.25);
      stroke(220);
      line(xDiv, 28*yDiv - i*2*yDiv, 29*xDiv, 28*yDiv - i*2*yDiv);
      popStyle();
    }
    
    // Draw graph
    for (int i=0; i<finalRaindata.length; i++){
      pushStyle();
      noStroke();
      float map_graph = map(finalRaindata[i], 0, 70, 0, 14*yDiv);
      float map_color = map(finalRaindata[i], 0, 70, 90, 255);
      fill(255 - map_color, map_color, 255 - map_color);
      rect(xDiv+0.195*i*xDiv, 28*yDiv, 0.1*xDiv, - map_graph);
      popStyle();
    }
    
    // Draw mean line
    pushStyle();
    float map_mean = map(mean(finalRaindata), 0, 70, 0, 14*yDiv);
    stroke(255, 0,0);
    strokeWeight(1);
    line(xDiv, 28*yDiv - map_mean, 29*xDiv, 28*yDiv - map_mean);
    popStyle();
    
    // Draw table
    for (int i=0; i<4; i++){
      pushStyle();
      stroke(255);
      fill(221);
      strokeWeight(3);
      rect(4*xDiv, 4*yDiv + i*2*yDiv, 12*xDiv, 2*yDiv);
      fill(241);
      rect(16*xDiv, 4*yDiv + i*2*yDiv, 9*xDiv, 2*yDiv);
      popStyle();
    }
    
    // Display text on the table
    pushStyle();
    fill(0);
    textAlign(CENTER);
    text("Mean", 10*xDiv, 5.5*yDiv);
    text(nf(mean(finalRaindata), 0, 2), 20.5*xDiv, 5.5*yDiv);
    text("Median", 10*xDiv, 7.5*yDiv);
    text(nf(median(finalRaindata), 0,2), 20.5*xDiv, 7.5*yDiv);
    text("Standard Deviation", 10*xDiv, 9.5*yDiv);
    text(nf(standardDeviation(finalRaindata), 0, 2), 20.5*xDiv, 9.5*yDiv);
    text("Mode", 10*xDiv, 11.5*yDiv);
    text(nf(mode(finalRaindata), 1, 2), 20.5*xDiv, 11.5*yDiv);
    textSize(0.75*xDiv);
    text("Daily Rainfall Adelaide - 2016 - Kent Town Station", width/2, 2*yDiv);
    strokeWeight(1);
    line(6*xDiv, 2.125*yDiv, 24*xDiv, 2.125*yDiv);
    popStyle();
  
}
