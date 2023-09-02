//Deisgned by Letian LI
//import necessary libraries 
import controlP5.*;
import processing.serial.*;
Serial port;
ControlP5 cp5;

PFont font;
PFont font1;
PImage img;

//set variables
Knob myKnobB;
String Speed1 = "";
String Speed2 = "";
String Speed3 = "";
String Repeat = "";
String timeBottom1 = "";
String timeBottom2 = "";
String timeBottom3 = "";
String timeTop1 = "";
String timeTop2 = "";
String timeTop3 = "";
int Position = 20;
int NumbersOfSolution = 1;
int Type1 = 1;
float HoldTime;
float RunTime;
float ET;

//set text label names
Textlabel Title;
Textlabel B1;
Textlabel B2;
Textlabel B3;
Textlabel T1;
Textlabel T2;
Textlabel T3;
Textlabel P1;
Textlabel P2;
Textlabel P3;
Textlabel P4;
Textlabel P5;
Textlabel P6;
Textlabel Z1;
Textlabel Z2;
Textlabel Z3;
Textlabel Z4;
Textlabel Z5;
Textlabel Z6;
Textlabel Sp1;
Textlabel Sp2;
Textlabel Sp3;
Textlabel Rp;
Textlabel Po;
Textlabel NOS;
Textlabel START1;
Textlabel NAME;
Textlabel TYPE1;
Textlabel TYPE2;

//set color presets
color RED = color(238, 106, 89);
color BLUE = color(58, 63, 88);
color ORANGE = color(249, 172, 103);
color WHITE = color(236, 230, 205);


void setup() {
  //setup screen size
  size(1280, 720);
  cp5 = new ControlP5(this);
  font = createFont("caliri", 15);
  font1 = createFont("Georgia", 30);
  printArray(Serial.list());
  //adjust port name based on the list shown after you run it
  //port = new Serial(this, "COM7", 9600);
  img = loadImage("LOGO.jpeg");
  
  //add input boxes, buttons, and toggle switches for different paramenters
  cp5.addTextfield("Speed1")
    .setFont(font)
    .setColorBackground(ORANGE)
    .setColorValue(BLUE)
    .setColorCaptionLabel(ORANGE)
    .setColorLabel(ORANGE)
    .setColorForeground(WHITE)
    .setLabel("")
    .setPosition(85, 120)
    .setSize(300, 40)
    .setFocus(true)
    .setAutoClear(false)
    ;
  cp5.addTextfield("Speed2")
    .setFont(font)
    .setColorBackground(ORANGE)
    .setColorValue(BLUE)
    .setColorCaptionLabel(ORANGE)
    .setColorLabel(ORANGE)
    .setColorForeground(WHITE)
    .setLabel("")
    .setPosition(85, 220)
    .setSize(300, 40)
    .setFocus(true)
    .setAutoClear(false)
    ;
  cp5.addTextfield("Speed3")
    .setFont(font)
    .setColorBackground(ORANGE)
    .setColorValue(BLUE)
    .setColorCaptionLabel(ORANGE)
    .setColorLabel(ORANGE)
    .setColorForeground(WHITE)
    .setLabel("")
    .setPosition(85, 320)
    .setSize(300, 40)
    .setFocus(true)
    .setAutoClear(false)
    .getStringValue()
    ;
  cp5.addTextfield("Repeat")
    .setFont(font)
    .setColorBackground(ORANGE)
    .setColorValue(BLUE)
    .setColorCaptionLabel(ORANGE)
    .setColorLabel(ORANGE)
    .setColorForeground(WHITE)
    .setLabel("")
    .setPosition(85, 420)
    .setSize(300, 40)
    .setFocus(true)
    .setAutoClear(false)
    ;
  cp5.addTextfield("timeBottom1")
    .setFont(font)
    .setColorBackground(ORANGE)
    .setColorValue(BLUE)
    .setColorCaptionLabel(ORANGE)
    .setColorLabel(ORANGE)
    .setColorForeground(WHITE)
    .setLabel("")
    .setPosition(525, 120)
    .setSize(300, 40)
    .setFocus(true)
    .setAutoClear(false)
    ;
  cp5.addTextfield("timeBottom2")
    .setFont(font)
    .setColorBackground(ORANGE)
    .setColorValue(BLUE)
    .setColorCaptionLabel(ORANGE)
    .setColorLabel(ORANGE)
    .setColorForeground(WHITE)
    .setLabel("")
    .setPosition(525, 195)
    .setSize(300, 40)
    .setFocus(true)
    .setAutoClear(false)
    ;
  cp5.addTextfield("timeBottom3")
    .setFont(font)
    .setColorBackground(ORANGE)
    .setColorValue(BLUE)
    .setColorCaptionLabel(ORANGE)
    .setColorLabel(ORANGE)
    .setColorForeground(WHITE)
    .setLabel("")
    .setPosition(525, 270)
    .setSize(300, 40)
    .setFocus(true)
    .setAutoClear(false)
    ;
  cp5.addTextfield("timeTop1")
    .setFont(font)
    .setColorBackground(ORANGE)
    .setColorValue(BLUE)
    .setColorCaptionLabel(ORANGE)
    .setColorLabel(ORANGE)
    .setColorForeground(WHITE)
    .setLabel("")
    .setPosition(525, 365)
    .setSize(300, 40)
    .setFocus(true)
    .setAutoClear(false)
    ; 
  cp5.addTextfield("timeTop2")
    .setFont(font)
    .setColorBackground(ORANGE)
    .setColorValue(BLUE)
    .setColorCaptionLabel(ORANGE)
    .setColorLabel(ORANGE)
    .setColorForeground(WHITE)
    .setLabel("")
    .setPosition(525, 440)
    .setSize(300, 40)
    .setFocus(true)
    .setAutoClear(false)
    ; 
  cp5.addTextfield("timeTop3")
    .setFont(font)
    .setColorBackground(ORANGE)
    .setColorValue(BLUE)
    .setColorCaptionLabel(ORANGE)
    .setColorLabel(ORANGE)
    .setColorForeground(WHITE)
    .setLabel("")
    .setPosition(525, 515)
    .setSize(300, 40)
    .setFocus(true)
    .setAutoClear(false)
    ;   
  cp5.addSlider("Position", -40, 20, 0, 525, 605, 300, 30)
    .setNumberOfTickMarks(41)
    .setFont(font)
    .setColorBackground(ORANGE)
    .setColorTickMark(ORANGE)
    .setColorValue(WHITE)
    .setColorActive(RED)
    .setColorForeground(color(RED)) 
    .setLabel("")
    ;  
  myKnobB = cp5.addKnob("NumbersOfSolution")
               .setRange(1,3)
               .setValue(1)
               .setPosition(120,520)
               .setRadius(50)
               .setFont(font1)
               .setNumberOfTickMarks(2)
               .setTickMarkLength(10)
               .snapToTickMarks(true)
               .setColorForeground(WHITE)
               .setColorBackground(BLUE)
               .setColorActive(WHITE)
               .setColorValue(WHITE)
               .setColorCaptionLabel(BLUE)
               .setColorLabel(BLUE)
               .setDragDirection(Knob.HORIZONTAL)
               .setLabel("")
               ;
  cp5.addToggle("Type")
     .setPosition(290,540)
     .setSize(150,60)
     .setValue(true)
     .setColorForeground(WHITE)
     .setColorBackground(BLUE)
     .setColorActive(ORANGE)
     .setColorValue(WHITE)
     .setColorCaptionLabel(WHITE)
     .setColorLabel(WHITE)
     .setMode(ControlP5.SWITCH)
     ;
  cp5.addButton("Confirm")
     .setPosition(1000,115)
     .setSize(120,60)
     .setFont(font)
     .setColorForeground(RED)
     .setColorBackground(BLUE)
     .setColorActive(RED)
     .setLabel("")
     ;
  cp5.addButton("loadpreset1")
     .setPosition(930,250)
     .setSize(100,30)
     .setFont(font)
     .setColorForeground(RED)
     .setColorBackground(ORANGE)
     .setColorActive(RED)
     .setLabel("")
     ;
  cp5.addButton("loadpreset2")
     .setPosition(1090,250)
     .setSize(100,30)
     .setFont(font)
     .setColorForeground(RED)
     .setColorBackground(ORANGE)
     .setColorActive(RED)
     .setLabel("")
     ;
  cp5.addButton("loadpreset3")
     .setPosition(930,350)
     .setSize(100,30)
     .setFont(font)
     .setColorForeground(RED)
     .setColorBackground(ORANGE)
     .setColorActive(RED)
     .setLabel("")
     ;
  cp5.addButton("loadpreset4")
     .setPosition(1090,350)
     .setSize(100,30)
     .setFont(font)
     .setColorForeground(RED)
     .setColorBackground(ORANGE)
     .setColorActive(RED)
     .setLabel("")
     ;
  cp5.addButton("loadpreset5")
     .setPosition(930,450)
     .setSize(100,30)
     .setFont(font)
     .setColorForeground(RED)
     .setColorBackground(ORANGE)
     .setColorActive(RED)
     .setLabel("")
     ;
  cp5.addButton("loadpreset6")
     .setPosition(1090,450)
     .setSize(100,30)
     .setFont(font)
     .setColorForeground(RED)
     .setColorBackground(ORANGE)
     .setColorActive(RED)
     .setLabel("")
     ;
  cp5.addButton("savepreset1")
     .setPosition(930,280)
     .setSize(100,30)
     .setFont(font)
     .setColorForeground(RED)
     .setColorBackground(BLUE)
     .setColorActive(RED)
     .setLabel("")
     ;
  cp5.addButton("savepreset2")
     .setPosition(1090,280)
     .setSize(100,30)
     .setFont(font)
     .setColorForeground(RED)
     .setColorBackground(BLUE)
     .setColorActive(RED)
     .setLabel("")
     ;
  cp5.addButton("savepreset3")
     .setPosition(930,380)
     .setSize(100,30)
     .setFont(font)
     .setColorForeground(RED)
     .setColorBackground(BLUE)
     .setColorActive(RED)
     .setLabel("")
     ;
  cp5.addButton("savepreset4")
     .setPosition(1090,380)
     .setSize(100,30)
     .setFont(font)
     .setColorForeground(RED)
     .setColorBackground(BLUE)
     .setColorActive(RED)
     .setLabel("")
     ;
  cp5.addButton("savepreset5")
     .setPosition(930,480)
     .setSize(100,30)
     .setFont(font)
     .setColorForeground(RED)
     .setColorBackground(BLUE)
     .setColorActive(RED)
     .setLabel("")
     ;
  cp5.addButton("savepreset6")
     .setPosition(1090,480)
     .setSize(100,30)
     .setFont(font)
     .setColorForeground(RED)
     .setColorBackground(BLUE)
     .setColorActive(RED)
     .setLabel("")
     ;
   //add text displays
   Title = cp5.addTextlabel("label1")
                     .setText("Dip Coater Control")
                     .setPosition(520,10)
                     .setColorValue(RED)
                     .setFont(createFont("Georgia",30))
                     ;
   B1 = cp5.addTextlabel("label2")
                     .setText("Time in Solution A (s)")
                     .setPosition(525,90)
                     .setColorValue(BLUE)
                     .setFont(createFont("Georgia",16))
                     ;   
   B2 = cp5.addTextlabel("label3")
                     .setText("Time in Solution B (s)")
                     .setPosition(525,165)
                     .setColorValue(BLUE)
                     .setFont(createFont("Georgia",16))
                     ;     
   B3 = cp5.addTextlabel("label4")
                     .setText("Time in Solution C (s)")
                     .setPosition(525,240)
                     .setColorValue(BLUE)
                     .setFont(createFont("Georgia",16))
                     ;  
   T1 = cp5.addTextlabel("label5")
                     .setText("Drying Time #1 (s)")
                     .setPosition(525,335)
                     .setColorValue(BLUE)
                     .setFont(createFont("Georgia",16))
                     ;
   T2 = cp5.addTextlabel("label6")
                     .setText("Drying Time #2 (s)")
                     .setPosition(525,410)
                     .setColorValue(BLUE)
                     .setFont(createFont("Georgia",16))
                     ;    
   T3 = cp5.addTextlabel("label7")
                     .setText("Drying Time #3 (s)")
                     .setPosition(525,485)
                     .setColorValue(BLUE)
                     .setFont(createFont("Georgia",16))
                     ;     
   P1 = cp5.addTextlabel("label8")
                     .setText("Load Preset 1")
                     .setPosition(935,255)
                     .setColorValue(BLUE)
                     .setFont(createFont("Georgia",14))
                     ;
   P2 = cp5.addTextlabel("label9")
                     .setText("Load Preset 2")
                     .setPosition(1095,255)
                     .setColorValue(BLUE)
                     .setFont(createFont("Georgia",14))
                     ;    
   P3 = cp5.addTextlabel("label10")
                     .setText("Load Preset 3")
                     .setPosition(935,355)
                     .setColorValue(BLUE)
                     .setFont(createFont("Georgia",14))
                     ;   
   P4 = cp5.addTextlabel("label11")
                     .setText("Load Preset 4")
                     .setPosition(1095,355)
                     .setColorValue(BLUE)
                     .setFont(createFont("Georgia",14))
                     ;      
   P5 = cp5.addTextlabel("label12")
                     .setText("Load Preset 5")
                     .setPosition(935,455)
                     .setColorValue(BLUE)
                     .setFont(createFont("Georgia",14))
                     ;  
   P5 = cp5.addTextlabel("label13")
                     .setText("Load Preset 6")
                     .setPosition(1095,455)
                     .setColorValue(BLUE)
                     .setFont(createFont("Georgia",14))
                     ;   
   Z1 = cp5.addTextlabel("label24")
                     .setText("Save Preset 1")
                     .setPosition(935,285)
                     .setColorValue(WHITE)
                     .setFont(createFont("Georgia",14))
                     ;
   Z2 = cp5.addTextlabel("label25")
                     .setText("Save Preset 2")
                     .setPosition(1095,285)
                     .setColorValue(WHITE)
                     .setFont(createFont("Georgia",14))
                     ;    
   Z3 = cp5.addTextlabel("label26")
                     .setText("Save Preset 3")
                     .setPosition(935,385)
                     .setColorValue(WHITE)
                     .setFont(createFont("Georgia",14))
                     ;   
   Z4 = cp5.addTextlabel("label27")
                     .setText("Save Preset 4")
                     .setPosition(1095,385)
                     .setColorValue(WHITE)
                     .setFont(createFont("Georgia",14))
                     ;      
   Z5 = cp5.addTextlabel("label28")
                     .setText("Save Preset 5")
                     .setPosition(935,485)
                     .setColorValue(WHITE)
                     .setFont(createFont("Georgia",14))
                     ;  
   Z6 = cp5.addTextlabel("label29")
                     .setText("Save Preset 6")
                     .setPosition(1095,485)
                     .setColorValue(WHITE)
                     .setFont(createFont("Georgia",14))
                     ;  
   NOS = cp5.addTextlabel("label14")
                     .setText("Number of Solutions")
                     .setPosition(75,620)
                     .setColorValue(BLUE)
                     .setFont(createFont("Georgia",20))
                     ;
   TYPE1 = cp5.addTextlabel("label15")
                     .setText("Beaker")
                     .setPosition(295,555)
                     .setColorValue(BLUE)
                     .setFont(createFont("Georgia",20))
                     ;   
   TYPE2 = cp5.addTextlabel("label23")
                     .setText("Tube")
                     .setPosition(375,555)
                     .setColorValue(BLUE)
                     .setFont(createFont("Georgia",20))
                     ;     
   START1 = cp5.addTextlabel("label16")
                     .setText("Start")
                     .setPosition(1024,125)
                     .setColorValue(WHITE)
                     .setFont(createFont("Georgia",30))
                     ;      
   Sp1 = cp5.addTextlabel("label17")
                     .setText("Speed A (mm/min)")
                     .setPosition(80,90)
                     .setColorValue(BLUE)
                     .setFont(createFont("Georgia",16))
                     ;         
   Rp = cp5.addTextlabel("label18")
                     .setText("Repeat")
                     .setPosition(80,390)
                     .setColorValue(BLUE)
                     .setFont(createFont("Georgia",16))
                     ; 
   Po = cp5.addTextlabel("label20")
                     .setText("Position (mm)")
                     .setPosition(525,575)
                     .setColorValue(BLUE)
                     .setFont(createFont("Georgia",16))
                     ;  
   NAME = cp5.addTextlabel("label19")
                     .setText("Richard Li")
                     .setPosition(1150,680)
                     .setColorValue(BLUE)
                     .setFont(createFont("Georgia",16))
                     ;    
   Sp2 = cp5.addTextlabel("label21")
                     .setText("Speed B (mm/min)")
                     .setPosition(80,190)
                     .setColorValue(BLUE)
                     .setFont(createFont("Georgia",16))
                     ;      
   Sp3 = cp5.addTextlabel("label22")
                     .setText("Speed C (mm/min)")
                     .setPosition(80,290)
                     .setColorValue(BLUE)
                     .setFont(createFont("Georgia",16))
                     ;      
}    
void draw(){
  background(WHITE);
  noStroke();
  fill(BLUE);
  rect(50, 70, 420, 420);
  fill(WHITE);
  rect(60, 80, 400, 400);
  fill(RED);
  rect(50, 490, 420, 180);
  fill(WHITE);
  rect(60, 500, 400, 160);  
  fill(ORANGE);
  rect(470, 70, 420, 600);
  fill(WHITE);
  rect(480, 80, 400, 580);
  fill(RED);
  rect(890, 70, 340, 150);
  fill(WHITE);
  rect(900, 80, 320, 130);
  fill(BLUE);
  rect(990, 105, 140, 80);
  rect(890, 220, 340, 450);
  fill(WHITE);
  rect(900, 230, 320, 430);
  image(img, 990, 530, img.width/5, img.height/5);
  RunTime =  16.7/(1400/60)+13/(1400/60)*NumbersOfSolution*int(Repeat)+5.26/10*NumbersOfSolution*int(Repeat)+5.26/(float(Speed1)/60)*int(Repeat)+5.26/(int(Speed2)/60)*int(Repeat)+5.26/(int(Speed3)/60)*int(Repeat);
  HoldTime = (int(timeBottom1)+int(timeBottom2)+int(timeBottom3)+int(timeTop1)+int(timeTop2)+int(timeTop3))*int(Repeat);
  ET = RunTime + HoldTime;
  textFont(createFont("Georgia",15));
  text("Estimated Time: "+ET+"s", 75, 650, BLUE); 
}
  
public void Speed1(String theSpeed1){
  Speed1 = theSpeed1;
  println("Speed1 = "+Speed1);
}

public void Speed2(String theSpeed2){
  Speed2 = theSpeed2;
  println("Speed2 = "+Speed2);
}

public void Speed3(String theSpeed3){
  Speed3 = theSpeed3;
  println("Speed3 = "+Speed3);
}

public void Repeat(String theRepeat){
  Repeat = theRepeat;
  println("Repeat = "+Repeat);
}

public void Position(int thePosition){
  Position = thePosition+20;
  println("Position = "+Position);
}

public void timeBottom1(String theTime1){
  timeBottom1 = theTime1;
  println("timeBottom1 = "+timeBottom1);
}

public void timeBottom2(String theTime2){
  timeBottom2 = theTime2;
  println("timeBottom2 = "+timeBottom2);
}

public void timeBottom3(String theTime3){
  timeBottom3 = theTime3;
  println("timeBottom3 = "+timeBottom3);
}

public void timeTop1(String theTime4){
  timeTop1 = theTime4;
  println("timeTop1 = "+timeTop1);
}

public void timeTop2(String theTime5){
  timeTop2 = theTime5;
  println("timeTop2 = "+timeTop2);
}

public void timeTop3(String theTime6){
  timeTop3 = theTime6;
  println("timeTop3 = "+timeTop3);
}

void knob(int theValue) {
  NumbersOfSolution = theValue;
  println("NumbersOfSolution = "+NumbersOfSolution);
}

void Type(boolean theType) {
  if(theType==true) {
    Type1 = 1;
  } else {
    Type1 = 2;
  }
}
void loadpreset1(float v){
  cp5.loadProperties(("preset1"));
}

void loadpreset2(float v){
  cp5.loadProperties(("preset2"));
}

void loadpreset3(float v){
  cp5.loadProperties(("preset3"));
}

void loadpreset4(float v){
  cp5.loadProperties(("preset4"));
}

void loadpreset5(float v){
  cp5.loadProperties(("preset5"));
}

void loadpreset6(float v){
  cp5.loadProperties(("preset6"));
}

void savepreset1(float v){
  Speed1 = cp5.get(Textfield.class,"Speed1").getText();
  Speed2 = cp5.get(Textfield.class,"Speed2").getText();
  Speed3 = cp5.get(Textfield.class,"Speed3").getText();
  Repeat = cp5.get(Textfield.class,"Repeat").getText();
  timeBottom1= cp5.get(Textfield.class,"timeBottom1").getText();
  timeBottom2= cp5.get(Textfield.class,"timeBottom2").getText();
  timeBottom3= cp5.get(Textfield.class,"timeBottom3").getText();
  timeTop1= cp5.get(Textfield.class,"timeTop1").getText();
  timeTop2= cp5.get(Textfield.class,"timeTop2").getText();
  timeTop3= cp5.get(Textfield.class,"timeTop3").getText();
  cp5.saveProperties(("preset1"));
}

void savepreset2(float v){
  Speed1 = cp5.get(Textfield.class,"Speed1").getText();
  Speed2 = cp5.get(Textfield.class,"Speed2").getText();
  Speed3 = cp5.get(Textfield.class,"Speed3").getText();
  Repeat = cp5.get(Textfield.class,"Repeat").getText();
  timeBottom1= cp5.get(Textfield.class,"timeBottom1").getText();
  timeBottom2= cp5.get(Textfield.class,"timeBottom2").getText();
  timeBottom3= cp5.get(Textfield.class,"timeBottom3").getText();
  timeTop1= cp5.get(Textfield.class,"timeTop1").getText();
  timeTop2= cp5.get(Textfield.class,"timeTop2").getText();
  timeTop3= cp5.get(Textfield.class,"timeTop3").getText();
  cp5.saveProperties(("preset2"));
}

void savepreset3(float v){
  Speed1 = cp5.get(Textfield.class,"Speed1").getText();
  Speed2 = cp5.get(Textfield.class,"Speed2").getText();
  Speed3 = cp5.get(Textfield.class,"Speed3").getText();
  Repeat = cp5.get(Textfield.class,"Repeat").getText();
  timeBottom1= cp5.get(Textfield.class,"timeBottom1").getText();
  timeBottom2= cp5.get(Textfield.class,"timeBottom2").getText();
  timeBottom3= cp5.get(Textfield.class,"timeBottom3").getText();
  timeTop1= cp5.get(Textfield.class,"timeTop1").getText();
  timeTop2= cp5.get(Textfield.class,"timeTop2").getText();
  timeTop3= cp5.get(Textfield.class,"timeTop3").getText();
  cp5.saveProperties(("preset3"));
}

void savepreset4(float v){
  Speed1 = cp5.get(Textfield.class,"Speed1").getText();
  Speed2 = cp5.get(Textfield.class,"Speed2").getText();
  Speed3 = cp5.get(Textfield.class,"Speed3").getText();
  Repeat = cp5.get(Textfield.class,"Repeat").getText();
  timeBottom1= cp5.get(Textfield.class,"timeBottom1").getText();
  timeBottom2= cp5.get(Textfield.class,"timeBottom2").getText();
  timeBottom3= cp5.get(Textfield.class,"timeBottom3").getText();
  timeTop1= cp5.get(Textfield.class,"timeTop1").getText();
  timeTop2= cp5.get(Textfield.class,"timeTop2").getText();
  timeTop3= cp5.get(Textfield.class,"timeTop3").getText();
  cp5.saveProperties(("preset4"));
}

void savepreset5(float v){
  Speed1 = cp5.get(Textfield.class,"Speed1").getText();
  Speed2 = cp5.get(Textfield.class,"Speed2").getText();
  Speed3 = cp5.get(Textfield.class,"Speed3").getText();
  Repeat = cp5.get(Textfield.class,"Repeat").getText();
  timeBottom1= cp5.get(Textfield.class,"timeBottom1").getText();
  timeBottom2= cp5.get(Textfield.class,"timeBottom2").getText();
  timeBottom3= cp5.get(Textfield.class,"timeBottom3").getText();
  timeTop1= cp5.get(Textfield.class,"timeTop1").getText();
  timeTop2= cp5.get(Textfield.class,"timeTop2").getText();
  timeTop3= cp5.get(Textfield.class,"timeTop3").getText();
  cp5.saveProperties(("preset5"));
}

void savepreset6(float v){
  Speed1 = cp5.get(Textfield.class,"Speed1").getText();
  Speed2 = cp5.get(Textfield.class,"Speed2").getText();
  Speed3 = cp5.get(Textfield.class,"Speed3").getText();
  Repeat = cp5.get(Textfield.class,"Repeat").getText();
  timeBottom1= cp5.get(Textfield.class,"timeBottom1").getText();
  timeBottom2= cp5.get(Textfield.class,"timeBottom2").getText();
  timeBottom3= cp5.get(Textfield.class,"timeBottom3").getText();
  timeTop1= cp5.get(Textfield.class,"timeTop1").getText();
  timeTop2= cp5.get(Textfield.class,"timeTop2").getText();
  timeTop3= cp5.get(Textfield.class,"timeTop3").getText();
  cp5.saveProperties(("preset6"));
}

// send to Arduino mega once clicked
void Confirm(float v) {
  Speed1 = cp5.get(Textfield.class,"Speed1").getText();
  Speed2 = cp5.get(Textfield.class,"Speed2").getText();
  Speed3 = cp5.get(Textfield.class,"Speed3").getText();
  Repeat = cp5.get(Textfield.class,"Repeat").getText();
  timeBottom1= cp5.get(Textfield.class,"timeBottom1").getText();
  timeBottom2= cp5.get(Textfield.class,"timeBottom2").getText();
  timeBottom3= cp5.get(Textfield.class,"timeBottom3").getText();
  timeTop1= cp5.get(Textfield.class,"timeTop1").getText();
  timeTop2= cp5.get(Textfield.class,"timeTop2").getText();
  timeTop3= cp5.get(Textfield.class,"timeTop3").getText();
  port.write("A"+Speed1+"B"+Repeat+"C"+timeBottom1+"D"+timeBottom2+"E"+timeBottom3+"F"+timeTop1+"G"+timeTop2+"H"+timeTop3+"I"+NumbersOfSolution+"J"+Position+"K"+Speed2+"L"+Speed3+"M"+Type1+"N");
  println("A"+Speed1+"B"+Repeat+"C"+timeBottom1+"D"+timeBottom2+"E"+timeBottom3+"F"+timeTop1+"G"+timeTop2+"H"+timeTop3+"I"+NumbersOfSolution+"J"+Position+"K"+Speed2+"L"+Speed3+"M"+Type1+"N");
}
