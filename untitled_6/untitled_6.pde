//size screen
int w = 600;

//number of col and row
int row = 12;
int col = 16;

//total of cells
int total=col*row;
//keep trackk of the cell number
int totalCount=0;

//rectSize
float rectW=w/16;
float rectH=w/12;

//original artwork sequence
String [] originalSeq={
"b", "b","w","w","w","b","b","w","w","b","b","w",
"b","b","b","b","b","b","b","w","w","b","b","b",
"w","w","b","b","b","b","b","w","w","b","b","b",
"w","w","b","w","b","b","w","b","b","b","b","b",
"b","b","b","w","b","b","w","b","b","b","b","b",
"b","b","b","w","b","b","w","b","w","w","w","b",
"w","b","b","b","b","b","b","b","b","b","b","b",
"w","b","b","b","b","b","b","b","b","b","b","b",
"w","b","b","b","b","w","w","w","w","w","w","b",
"b","b","b","b","w","b","b","w","b","b","b","w",
"b","b","b","b","w","b","b","w","b","b","b","b",
"b","b","b","b","w","b","b","w","w","w","w","b",
"b","w","w","w","w","b","b","b","b","w","b","w",
"b","w","b","b","b","b","b","b","b","w","b","w",
"b","w","b","b","b","b","b","b","b","w","b","w",
"b","b","b","w","b","b","w","b","b","w","b","w",
};

//prob
float ran;

//dinamic probabily. is last one was white, it will improve the next one
float prob=0.25;

boolean generate=false;

void setup(){
 size(w,w);
 background(0); 
noStroke();
  fill(200,10);
  
  // draw original artwork seqeuence
  original ();
}


void draw(){

// the sketch doesn't draw anything unless the space is pressed
if (generate ){
  
 for (int i = 0; i < col; i++) {
  for (int j = 0; j < row; j++) {
 ran=random(1);
   if(ran<prob) 
  { fill(255);
  prob=0.40;
  }
   else { fill(160);
     prob=0.20;
 }  
     rect(j*rectH, i*rectW,rectH, rectW);
  }
}
 }
   generate=false;
 }
 
 
void keyPressed () {

//If space is pressed generate a new sequence  
   if ( key == ' ') {
     generate=!generate;
   }
   
}



void original(){
  
   for (int i = 0; i < col; i++) {
  for (int j = 0; j < row; j++) {

 if(originalSeq[totalCount]=="w")
  { fill(255);
  prob=0.40;
  }
   else { fill(160);
     prob=0.20;
 
 }
     
     rect(j*rectH, i*rectW,rectH, rectW);
    totalCount++;
  }
}
  
}
