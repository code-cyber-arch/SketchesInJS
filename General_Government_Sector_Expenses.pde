// Title: Problem 1: Data Visualization
// Author: amirasabdu
// Created: July 3, 2020, 10:14 a.m.
// URL: https://lti-adx.adelaide.edu.au/think.create.code/processingjs/s/107941/

//Data -------------------------------------------------------------------------------------------
String[] sectors = {"General public services", "Public order and safety", "Education", "Health", "Social security and welfare", "Housing and community amenities", "Recreation and culture", "Fuel and energy", "Agriculture, forestry, fishing and hunting", "Mining and mineral resources other than fuels", "Transport and communications", "Other economic affairs", "Other purposes"};
int[] budget = {408, 1752, 4364, 5618, 1437, 1275, 421, 74, 213, 73, 1219, 390, 766};

void setup(){
  size(620,460);
  background(255);
}

//Sum Function ----------------------------------------------------------------------------------------------------------------------------
int sumArray(int[] values){
    int sum = 0;
    for (int i = 0; i < values.length; i++){
        sum = sum + values[i];
    }
    return sum;
}

// Drawing table and pie chart ---------------------------------
void draw(){
  
    int divide = 19;
    float xDiv = width/divide;
    float yDiv = height/divide;
    
    float total = sumArray(budget);
    float[] segments = new float[budget.length];
    
    
    float stop=0.0;
    float start=0.0;
    
    for (int i = 0; i < budget.length; i++){
        segments[i] = (float(budget[i])/total)*100;
    }
    
    randomSeed(253);
    for(int i=0; i<segments.length; i++){
      pushStyle();
      int colorR = int(random(255));
      int colorG = int(random(255));
      int colorB = int(random(255));
      
      fill(colorR,colorG,colorB);
      stop = start + radians(segments[i]*4);
      strokeWeight(5);
      stroke(220);
      arc(15*xDiv,(height*3)/5,6*xDiv,6*xDiv,start,stop);
      start=stop;
      
      strokeWeight(3);
      stroke(255);
      ellipse(0.5*xDiv, (i+4.5)*yDiv, yDiv, yDiv);
      rect(0.5*xDiv, (i+ 4)*yDiv, 9*xDiv, yDiv);
      rect(9.5*xDiv, (i+ 4)*yDiv, 2*xDiv, yDiv);
      fill(255, 180);
      rect(0.5*xDiv, (i+ 4)*yDiv, 9*xDiv, yDiv);
      rect(9.5*xDiv, (i+ 4)*yDiv, 2*xDiv, yDiv);
      
      fill(0);
      textSize(0.375*xDiv);
      text(sectors[i], xDiv, (i+4.8)*yDiv);
      textAlign(CENTER);
      text(budget[i], 10.5*xDiv, (i+4.8)*yDiv);
      popStyle();
    }
    
    pushStyle();
    stroke(190);
    fill(0);
    textSize(0.5*xDiv);
    text("General Government Sector Expenses by Function ($million)", 0.4*xDiv, 2*yDiv);
    line(0, 2.125*yDiv, width, 2.125*yDiv);
    textAlign(CENTER);
    text("Pie Chart", 15*xDiv, 6*yDiv);
    popStyle();
    
    pushStyle();
    textSize(0.4*xDiv);
    fill(0);
    text("Public Sector", xDiv, 3.8*yDiv);
    text("Amount", 9.75*xDiv, 3.8*yDiv);
    int budget_sum = sumArray(budget);
    text("Sum", 8.5*xDiv, 17.8*yDiv);
    textAlign(CENTER);
    text(budget_sum, 10.5*xDiv, 17.8*yDiv);
    popStyle();
}
