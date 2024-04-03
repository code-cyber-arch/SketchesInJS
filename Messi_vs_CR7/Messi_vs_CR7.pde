// Title: Messi vs CR7
// Author: Abdurahman Mahammedsied
// Created: Nov. 29, 2020, 11:44 a.m.
// URL: https://lti-adx.adelaide.edu.au/think.create.code/processingjs/s/107987/

/*
This project is about comparing Lionel Messi and Cristiano Ronaldo 
during their professional career in the Spanish league for 9 years 
based on goal scored and assist for goals.
*/


// Storing data ----------------------------------------------------------------------------------------------------------

// Season played together during spanish leage
String[] sp = {"2009", "2010", "2011", "2012", "2013", "2014", "2015", "2016", "2017"};
// Table title
String[] title = {"Year", "Match Played", "Goal Scored", "Goal Assist"};
// Messi statistical data since 2006
int[][] m10_data = {{2006, 26, 10, 1},{2007, 41, 25, 8},{2008, 40, 20, 16},{2009, 54, 38, 14},{2010, 54, 58, 16},{2011, 57, 55, 27},{2012, 60, 79, 21},{2013, 39, 39, 12},{2014, 52, 50, 19},{2015, 53, 48, 23},{2016, 51, 51, 25},{2017, 57, 50, 16},{2018, 49, 47, 23},{2019, 49, 45, 16}};
// Ronaldo statistical data since 2006
int[][] cr7_data =  {{2006, 46, 19, 8},{2007, 50, 29, 11},{2008, 50, 34, 9},{2009, 42, 29, 4},{2010, 48, 45, 13},{2011, 52, 53, 14},{2012, 58, 58, 12},{2013, 50, 59, 16},{2014, 51, 56, 19},{2015, 52, 54, 17},{2016, 44, 42, 14},{2017, 49, 42, 9},{2018, 46, 43, 12},{2019, 40, 25, 4}};
// ------------------------------------------------------------------------------------------------------------------------

// Defining functions -----------------------------------------------------------------------------------------------------

// Define a function to extract data
int[][] dataExtract(int[][] data, int start, int end){
  int[][] newArr = {};
  for (int i = 0; i < data.length; i++){
    if (data[i][0] >= start && data[i][0] <= end){
      newArr = (int[][])append(newArr, new int[]{data[i][0], data[i][1], data[i][2], data[i][3]});
    }
  }
  return newArr;
}

// Define function to Filter data from extracted data
int[] dataFilter(int[][] data, int index){
  int[] newArr = {};
  for (int i=0; i<data.length; i++){
    newArr = append(newArr, data[i][index]);
  }
  return newArr;
}

// Define sum function to add elements in a given integer array
int sum(int[] data){
  int sum = 0;
  for (int i=0; i<data.length; i++){
    sum += data[i];
  }
  return sum;
}

// Define Average function for a given integer array
float average(int[] data){
    int sum = 0;
    for(int i = 0; i < data.length; i++){
        sum += data[i];
    }
    float ave = (float)sum/data.length;
    return ave;
}

// Define Maximum Function to identify the maximum value in a given integer array
int maximum(int[] data){
    int max = data[0];
    for(int i = 0; i < data.length; i++){
        if(data[i] > max){
            max = data[i];
        }
    }
    return max;
}

// Define Minimum Function to identify the minimum value in a given integer array
int minimum(int[] data){
    int min = data[0];
    for(int i = 0; i < data.length; i++){
        if(data[i] < min){
            min = data[i];
        }
    }
    return min;
}

// Define Standard Deviation Function to calculate the standard deviation of a given integer array
float sd(int[] data) {
    float sum = 0.0;
    float ave = average(data);
    for(int i = 0; i < data.length; i++) {
        sum += pow(data[i] - ave, 2);
    }
    float sd = sqrt(sum/data.length);
    return  sd;
}

// Define Median Function to calculate the median value of a given integer value
float median(int[] data){
    int[] sorted = sort(data);
    float median;
    if (sorted.length%2 == 0){
        median = (sorted[sorted.length/2] + sorted[sorted.length/2+1])/2;
    } else {
        median = sorted[int(sorted.length/2+0.5)];
    }
    return median;
}

// ------------------------------------------------------------------------------------------------------------------------


// Display and visualize data ---------------------------------------------------------------------------------------------
//  setup screen
void setup(){
  size(960,640);
  smooth();
  fill(0);
}

// Draw and display data
void draw(){
    
    // Background properties
    background(248);
    strokeWeight(1);
    pushStyle();
    noFill();
    strokeWeight(3);
    stroke(222);
    rect(0, 0, width-1, height-1);
    popStyle();
    
    // Grid divider
    int divider = 42;
    float yGrid = height/divider;
    float xGrid = width/(divider);
    
    // Extract and filter messi data
    int[][] messi = dataExtract(m10_data, 2009, 2017);
    int[] m10g = dataFilter(messi, 2); // index no 2 for goal
    int[] m10a = dataFilter(messi, 3); // index no 3 for assist
    
    // Extract and filter ronaldo data
    int[][] ronaldo = dataExtract(cr7_data, 2009, 2017);
    int[] cr7g = dataFilter(ronaldo, 2); // index no 2 for goal
    int[] cr7a = dataFilter(ronaldo, 3); // index no 3 for assist
    
    // Display title
    pushStyle();
    textSize(0.75*xGrid);
    line(2*xGrid, 1.65*yGrid, 19.4*xGrid, 1.65*yGrid);
    text("Lionel Messi (LM10) Vs Cristiano Ronaldo (CR7)", 2*xGrid, 1.25*yGrid);
    textSize(0.5*xGrid);
    text("Stastical analysis during thier 9 year in Spain for thier respective clubs 2009 - 2017", 2*xGrid, 2.5*yGrid);
    popStyle();
    
    // Display table comparison header
    pushStyle();
    stroke(222);
    strokeWeight(3);
    fill(0,0,255,120);
    rect(2*xGrid, 3.0*yGrid, 7.25*xGrid, 1.5*yGrid);
    fill(255,0,0,120);
    rect(10*xGrid, 3.0*yGrid, 7.25*xGrid, 1.5*yGrid);
    popStyle();
    pushStyle();
    textAlign(CENTER);
    textSize(0.6*xGrid);
    text("LM10", 4.5*xGrid, 4.0*yGrid);
    text("CR7", 14.5*xGrid, 4.0*yGrid);
    popStyle();
    
    // Text box indicating to click to view full stastical data on pop-up page
    pushStyle();
    fill(196);
    stroke(212);
    strokeWeight(3);
    rect(32*xGrid, 3*yGrid, 10*xGrid, 1.5*yGrid);
    fill(0);
    textSize(0.6*xGrid);
    text("Click here to view full table", 32.5*xGrid, 4.1*yGrid);
    popStyle();
    
    // Draw comparision table
    for (int i=0; i<2; i++){
      pushStyle();
      stroke(255);
      strokeWeight(3);
      fill(0,15);
      for (int j=0; j<6; j++){
        rect(2*xGrid, (6.0 + 6*j)*yGrid + (i*1.5*yGrid), 15*xGrid, 1.5*yGrid);
      }
      popStyle();
      
      pushStyle();
      stroke(255);
      strokeWeight(3);
      fill(0,45);
      for (int j=0; j<6; j++){
        rect(7*xGrid, (6.0 + 6*j)*yGrid + (i*1.5*yGrid), 5*xGrid, 1.5*yGrid);
      }
      popStyle();
    }
    
    // Draw comparision 
    pushStyle();
    textAlign(CENTER);
    for (int i=0; i<6; i++){
      pushStyle();
      fill(255,120,90);
      textSize(0.55*xGrid);
      text("Goal Scored", 9.5*xGrid, (7+i*6)*yGrid);
      text("Assist Goal", 9.5*xGrid, (8.5+i*6)*yGrid);
      popStyle();
    }
    popStyle();
    
    pushStyle();
    textAlign(CENTER);
    textSize(0.525*xGrid);
    text("Total (9 Years) Stat", 9.5*xGrid, 5.5*yGrid);
    
    // Display total goal for both LM10 and CR7
    pushStyle();
    if (sum(m10g) > sum(cr7g)){
      text(sum(cr7g), 14.5*xGrid, 7*yGrid);
      fill(50,205,50);
      text(sum(m10g), 4.5*xGrid, 7*yGrid);
    } else {
      text(sum(m10g), 4.5*xGrid, 7*yGrid);
      fill(50,205,50);
      text(sum(cr7g), 14.5*xGrid, 7*yGrid);
    }
    popStyle();
    
    // Display total assist for both LM10 and CR7
    pushStyle();
    if (sum(m10a) > sum(cr7a)){
      text(sum(cr7a), 14.5*xGrid, 8.5*yGrid);
      fill(50,205,50);
      text(sum(m10a), 4.5*xGrid, 8.5*yGrid);
    } else {
      text(sum(m10a), 4.5*xGrid, 8.5*yGrid);
      fill(50,205,50);
      text(sum(cr7a), 14.5*xGrid, 8.5*yGrid);
    }
    popStyle();
    
    text("Average per Year Stat", 9.5*xGrid, 11.5*yGrid);
    
    // Display average goal for both LM10 and CR7
    pushStyle();
    if (average(m10g) > average(cr7g)){
      text(nf(average(cr7g),0,1), 14.5*xGrid, 13*yGrid);
      fill(50,205,50);
      text(nf(average(m10g),0,1), 4.5*xGrid, 13*yGrid);
    } else {
      text(nf(average(m10g),0,1), 4.5*xGrid, 13*yGrid);
      fill(50,205,50);
      text(nf(average(cr7g),0,1), 14.5*xGrid, 13*yGrid);
    }
    popStyle();
    
    // Display average assist for both LM10 and CR7
    pushStyle();
    if (average(m10a) > average(cr7a)){
      text(nf(average(cr7a),0,1), 14.5*xGrid, 14.5*yGrid);
      fill(50,205,50);
      text(nf(average(m10a),0,1), 4.5*xGrid, 14.5*yGrid);
    } else {
      text(nf(average(m10a),0,1), 4.5*xGrid, 14.5*yGrid);
      fill(50,205,50);
      text(nf(average(cr7a),0,1), 14.5*xGrid, 14.5*yGrid);
    }
    popStyle();
    
    text("Maximum Stat", 9.5*xGrid, 17.5*yGrid);
    
    // Display maximum goal for both LM10 and CR7
    pushStyle();
    if (maximum(m10g) > maximum(cr7g)){
      text(maximum(cr7g), 14.5*xGrid, 19*yGrid);
      fill(50,205,50);
      text(maximum(m10g), 4.5*xGrid, 19*yGrid);
    } else {
      text(maximum(m10g), 4.5*xGrid, 19*yGrid);
      fill(50,205,50);
      text(maximum(cr7g), 14.5*xGrid, 19*yGrid);
    }
    popStyle();
    
    // Display maximum assist for both LM10 and CR7
    pushStyle();
    if (maximum(m10a) > maximum(cr7a)){
      text(maximum(cr7a), 14.5*xGrid, 20.5*yGrid);
      fill(50,205,50);
      text(maximum(m10a), 4.5*xGrid, 20.5*yGrid);
    } else {
      text(maximum(m10a), 4.5*xGrid, 20.5*yGrid);
      fill(50,205,50);
      text(maximum(cr7a), 14.5*xGrid, 20.5*yGrid);
    }
    popStyle();
 
    text("Minimum Stat", 9.5*xGrid, 23.5*yGrid);
    
    // Display minimum goal for both LM10 and CR7
    pushStyle();
    if (minimum(m10g) > minimum(cr7g)){
      text(minimum(cr7g), 14.5*xGrid, 25*yGrid);
      fill(50,205,50);
      text(minimum(m10g), 4.5*xGrid, 25*yGrid);
    } else {
      text(minimum(m10g), 4.5*xGrid, 25*yGrid);
      fill(50,205,50);
      text(minimum(cr7g), 14.5*xGrid, 25*yGrid);
    }
    popStyle();
    
    // Display minimum assist for both LM10 and CR7
    pushStyle();
    if (minimum(m10a) > minimum(cr7a)){
      text(minimum(cr7a), 14.5*xGrid, 26.5*yGrid);
      fill(50,205,50);
      text(minimum(m10a), 4.5*xGrid, 26.5*yGrid);
    } else {
      text(minimum(m10a), 4.5*xGrid, 26.5*yGrid);
      fill(50,205,50);
      text(minimum(cr7a), 14.5*xGrid, 26.5*yGrid);
    }
    popStyle();
    
    text("Standard Deviation Stat", 9.5*xGrid, 29.5*yGrid);
    
    // Display standard deviation goal for both LM10 and CR7
    pushStyle();
    if (sd(m10g) < sd(cr7g)){
      text(nf(sd(cr7g),0,1), 14.5*xGrid, 31*yGrid);
      fill(50,205,50);
      text(nf(sd(m10g),0,1), 4.5*xGrid, 31*yGrid);
    } else {
      text(nf(sd(m10g),0,1), 4.5*xGrid, 31*yGrid);
      fill(50,205,50);
      text(nf(sd(cr7g),0,1), 14.5*xGrid, 31*yGrid);
    }
    popStyle();
    
    // Display standard deviation assist for both LM10 and CR7
    pushStyle();
    if (sd(m10a) < sd(cr7a)){
      text(nf(sd(cr7a),0,1), 14.5*xGrid, 32.5*yGrid);
      fill(50,205,50);
      text(nf(sd(m10a),0,1), 4.5*xGrid, 32.5*yGrid);
    } else {
      text(nf(sd(m10a),0,1), 4.5*xGrid, 32.5*yGrid);
      fill(50,205,50);
      text(nf(sd(cr7a),0,1), 14.5*xGrid, 32.5*yGrid);
    }
    popStyle();
    
    text("Median Stat", 9.5*xGrid, 35.5*yGrid);
    
    // Display median goal for both LM10 and CR7
    pushStyle();
    if (median(m10g) > median(cr7g)){
      text(nf(median(cr7g),0,1), 14.5*xGrid, 37*yGrid);
      fill(50,205,50);
      text(nf(median(m10g),0,1), 4.5*xGrid, 37*yGrid);
    } else {
      text(nf(median(m10g),0,1), 4.5*xGrid, 37*yGrid);
      fill(50,205,50);
      text(nf(median(cr7g),0,1), 14.5*xGrid, 37*yGrid);
    }
    popStyle();
    
    // Display median assist for both LM10 and CR7
    pushStyle();
    if (median(m10a) > median(cr7a)){
      text(nf(median(cr7a),0,1), 14.5*xGrid, 38.5*yGrid);
      fill(50,205,50);
      text(nf(median(m10a),0,1), 4.5*xGrid, 38.5*yGrid);
    } else {
      text(nf(median(m10a),0,1), 4.5*xGrid, 38.5*yGrid);
      fill(50,205,50);
      text(nf(median(cr7a),0,1), 14.5*xGrid, 38.5*yGrid);
    }
    popStyle();
    popStyle();
    
    // Display vertical scale for the graph
    int start = 10;
    for (float i=0; i<8; i++){
      pushStyle();
      stroke(221);
      for (int j=0; j<divider; j=j+20){
        line(21.75*xGrid, (18.5+j)*yGrid - i*1.5*yGrid, 39.5*xGrid, (18.5+j)*yGrid - i*1.5*yGrid);
        textSize(0.45*xGrid);
        text(start, 21*xGrid, (18.75+j)*yGrid - i*1.5*yGrid);
      }
      start = start+10;
      popStyle();
    }
    
    // Draw vertical and horizontal line for the graph
    pushStyle();
    stroke(1);
    for (int i=0; i<divider; i=i+20){
      line(21*xGrid, (20+i)*yGrid, 40*xGrid, (20+i)*yGrid);
      line(22*xGrid, (7+i)*yGrid, 22*xGrid, (21+i)*yGrid);
    }
    popStyle();
    
    // Draw ellipse connection for vertical and horizontal line of the graph
    pushStyle();
    stroke(255);
    strokeWeight(2);
    for (int i=0; i<divider; i=i+20){
      ellipse(22*xGrid, (20+i)*yGrid, 10,10);
    }
    popStyle();
    
    // Display text season played for line graph
    for (int i=0; i<sp.length; i++){
      pushStyle();
      textAlign(CENTER);
      textSize(0.4*xGrid);
      for (int j=0; j<divider; j=j+20){
        text(sp[i], 23*xGrid+i*2*xGrid, (21+j)*yGrid);
      }
      popStyle();
    }
    
    // Display line graph of lineol messi's data for all 3 of the graph
    for (int i=0; i<sp.length-1; i++) {
      pushStyle();
      float map_m10g = map(m10g[i], 0, 80, 0, 12 * yGrid);
      float map_m10g2 = map(m10g[i+1], 0, 80, 0, 12 * yGrid);
      float map_m10a = map(m10a[i], 0, 80, 0, 12 * yGrid);
      float map_m10a2 = map(m10a[i+1], 0, 80, 0, 12 * yGrid);
      stroke(0,0,255);
      line(23*xGrid+i*2*xGrid, 20*yGrid -map_m10g, 23*xGrid+(i+1)*2*xGrid, 20*yGrid - map_m10g2);
      line(23*xGrid+i*2*xGrid, 40*yGrid -map_m10a, 23*xGrid+(i+1)*2*xGrid, 40*yGrid - map_m10a2);
      
      pushStyle();
      fill(0,0,255);
      textAlign(CENTER);
      textSize(0.4*xGrid);
      if (m10g[i] == maximum(m10g)){
        text("Max " + maximum(m10g), 23*xGrid+i*2*xGrid, 19.5*yGrid -map_m10g);
      }
      if (m10g[i] == minimum(m10g)){
        text("Min " + minimum(m10g), 23*xGrid+i*2*xGrid, 21*yGrid -map_m10g);
      }
      if (m10a[i] == maximum(m10a)){
        text("Max " + maximum(m10a), 23*xGrid+i*2*xGrid, 39.5*yGrid -map_m10a);
      }
      if (m10a[i] == minimum(m10a)){
        text("Min " + minimum(m10a), 23*xGrid+i*2*xGrid, 40.5*yGrid -map_m10a);
      }
      popStyle();
      for (int j=0; j<sp.length; j++){
        float ell_map_m10g = map(m10g[j], 0, 80, 0, 12 * yGrid);
        float ell_map_m10a = map(m10a[j], 0, 80, 0, 12 * yGrid);
        pushStyle();
        stroke(255);
        fill(0,0,255);
        ellipse(23*xGrid+j*2*xGrid, 20*yGrid -ell_map_m10g, 5, 5);
        ellipse(23*xGrid+j*2*xGrid, 40*yGrid -ell_map_m10a, 5, 5);
        popStyle();
      }
      popStyle();
    }
    
    // Display line graph of cristiano ronaldo's data for all 3 of the graph
    for (int i=0; i<sp.length-1; i++) {
        pushStyle();
        float map_cr7g = map(cr7g[i], 0, 80, 0, 12 * yGrid);
        float map_cr7g2 = map(cr7g[i+1], 0, 80, 0, 12 * yGrid);
        float map_cr7a = map(cr7a[i], 0, 80, 0, 12 * yGrid);
        float map_cr7a2 = map(cr7a[i+1], 0, 80, 0, 12 * yGrid);
        stroke(255,0,0);
        line(23*xGrid+i*2*xGrid, 20*yGrid -map_cr7g, 23*xGrid+(i+1)*2*xGrid, 20*yGrid - map_cr7g2);
        line(23*xGrid+i*2*xGrid, 40*yGrid -map_cr7a, 23*xGrid+(i+1)*2*xGrid, 40*yGrid - map_cr7a2);
        pushStyle();
        fill(255,0,0);
        textAlign(CENTER);
        textSize(0.4*xGrid);
        if (cr7g[i] == maximum(cr7g)){
          text("Max " + maximum(cr7g), 23*xGrid+i*2*xGrid, 19.5*yGrid -map_cr7g);
        }
        if (cr7g[i] == minimum(cr7g)){
          text("Min " + minimum(cr7g), 23*xGrid+i*2*xGrid, 21*yGrid -map_cr7g);
        }
        if (cr7a[i] == maximum(cr7a)){
          text("Max " + maximum(cr7a), 23*xGrid+i*2*xGrid, 39.5*yGrid -map_cr7a);
        }
        if (cr7a[i] == minimum(cr7a)){
          text("Min " + minimum(cr7a), 23*xGrid+i*2*xGrid, 40.5*yGrid -map_cr7a);
        }
        popStyle();
        for (int j=0; j<sp.length; j++){
            float ell_map_cr7g = map(cr7g[j], 0, 80, 0, 12 * yGrid);
            float ell_map_cr7a = map(cr7a[j], 0, 80, 0, 12 * yGrid);
            pushStyle();
            stroke(255);
            fill(255,0,0);
            ellipse(23*xGrid+j*2*xGrid, 20*yGrid -ell_map_cr7g, 5, 5);
            ellipse(23*xGrid+j*2*xGrid, 40*yGrid -ell_map_cr7a, 5, 5);
            popStyle();
        }
        popStyle();
    }
    
    // Display legend for line graph
    for (int i=0; i<divider; i=i+20){
      pushStyle();
      noStroke();
      textSize(0.45*xGrid);
      fill(0,0,255);
      text("LM10", 40.75*xGrid, (14.4+i)*yGrid);
      rect(40*xGrid, (14+i)*yGrid, 0.5*xGrid, 0.5*yGrid, 0.5*xGrid);
      fill(255, 0, 0);
      text("CR7", 40.75*xGrid, (15.5+i)*yGrid);
      rect(40*xGrid, (15+i)*yGrid, 0.5*xGrid, 0.5*yGrid, 0.5*xGrid);
      popStyle();
    }
    
    // Display graph title
    pushStyle();
    textSize(0.65*xGrid);
    text("Goal Scored by Season", 23*xGrid, 5.5*yGrid);
    text("Assist Goal by Season", 23*xGrid, 25.5*yGrid);
    popStyle();
    
    // Display data source
    pushStyle();
    textSize(0.45*xGrid);
    text("Data Source: messivsronaldo.net", 2*xGrid, 41.5*yGrid);
    popStyle();
}

// Second screen to display all the data for both players
void mouseClicked(){
  frameRate(0.3);
  // Grid divider
  int divider = 42;
  float yGrid = height/divider;
  float xGrid = width/(divider);
  
  // Drawing screen (pop-up screen size)
  pushStyle();
  fill(248);
  stroke(202);
  rect(2*xGrid, 3*yGrid, 40*xGrid, 40*yGrid);
  popStyle();
  
  // Table title
  pushStyle();
  strokeWeight(6);
  stroke(0,0,255, 46);
  fill(0,0,255,96);
  rect(width/2 - 16*xGrid, 5*yGrid, 14*xGrid, 30.75*yGrid);
  fill(0, 0, 96);
  textSize(0.7*xGrid);
  text("Lionel Messi - LM10", width/2 - 15.5*xGrid, 6.5*yGrid);
  stroke(255,0,0, 46);
  fill(255,0,0,96);
  rect(width/2 + 16*xGrid, 5*yGrid, -14*xGrid, 30.75*yGrid);
  textAlign(RIGHT);
  fill(96,0,0);
  text("Cristiano Ronaldo - CR7", width/2 + 15.5*xGrid, 6.5*yGrid);
  popStyle();
  
  // Drawing table
  pushStyle();
  stroke(255, 128);
  strokeWeight(3);
  fill(0);
  rectMode(CENTER);
  for (int i = 0; i < m10_data.length+2; i++){
    for (int j=0; j<4; j++){
      pushStyle();
      fill(222 - (j*10));
      rect(width/2, (i*1.75*yGrid)+(8*yGrid), 31*xGrid - j*8*xGrid, 1.75*yGrid);
      popStyle();
    }
  }
  popStyle();
  
  // Displaying data on table
  for (int i=0; i<m10_data.length; i++){
    pushStyle();
    textAlign(CENTER);
    textSize(0.6*xGrid);
    text(m10_data[i][0], width/2, (i*1.75*yGrid)+(10.25*yGrid));
    text(title[0], width/2, (8.5*yGrid));
    for (int j = 1; j<4; j++){
      text(title[j], width/2 - 5.5*xGrid - ((j-1)*4*xGrid), (8.5*yGrid));
      text(title[j], width/2 + 5.5*xGrid + ((j-1)*4*xGrid), (8.5*yGrid));
      text(m10_data[i][j], width/2 - 5.5*xGrid - ((j-1)*4*xGrid), (i*1.75*yGrid)+(10.25*yGrid));
      text(cr7_data[i][j], width/2 + 5.5*xGrid + ((j-1)*4*xGrid), (i*1.75*yGrid)+(10.25*yGrid));
    }
    popStyle();
  }
}
