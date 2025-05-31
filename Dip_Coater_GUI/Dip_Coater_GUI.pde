import controlP5.*;
import processing.serial.*;
Serial port;
ControlP5 cp5;

PFont font;
PFont font1;
PImage img;

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
String SubstrateSize = "";
int Position = 20;
int NumbersOfSolution = 1;
int Type1 = 1;
float HoldTime;
float RunTime;
float ET;

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
Textlabel SS;

//Scheme 1
//color COLORBKG = color(236, 230, 205);
//color COLORPRI = color(249, 172, 103);
//color COLORSEC = color(238, 106, 89);
//color COLORTEXT = color(58, 63, 88);
//color COLOROL = color(236, 230, 205);

//Scheme 2
color COLORBKG = color(30,30,30);
color COLORPRI = color(105, 110, 108);
color COLORSEC = color(240,240,240);
color COLORTEXT = color(240,240,240);
color COLOROL = color(50,50,50);

////Scheme 3
//color COLORBKG = color(250, 250, 250);
//color COLORPRI = color(194, 204, 200);
//color COLORSEC = color(66, 133, 244);
//color COLORTEXT = color(33, 33, 33);
//color COLOROL = color(200, 200, 200);

////Scheme 4
//color COLORBKG = color(236, 239, 241);
//color COLORPRI = color(157, 228, 237);
//color COLORSEC = color(242, 182, 114);
//color COLORTEXT = color(33, 33, 33);
//color COLOROL = color(120, 144, 156);

void setup() {
  size(1280, 720);
  cp5 = new ControlP5(this);
  font = createFont("caliri", 15);
  font1 = createFont("Georgia", 30);
  printArray(Serial.list());
  //port = new Serial(this, "COM7", 9600);
  img = loadImage("LOGO.png");
  
  
  cp5.addTextfield("Speed1")
    .setFont(font)
    .setColorBackground(COLORPRI)
    .setColorValue(COLORTEXT)
    .setColorCaptionLabel(COLORSEC)
    .setColorLabel(COLORSEC)
    .setColorForeground(COLORPRI)
    .setLabel("")
    .setPosition(85, 110)
    .setSize(300, 40)
    .setFocus(true)
    .setAutoClear(false)
    ;
  cp5.addTextfield("Speed2")
    .setFont(font)
    .setColorBackground(COLORPRI)
    .setColorValue(COLORTEXT)
    .setColorCaptionLabel(COLORSEC)
    .setColorLabel(COLORSEC)
    .setColorForeground(COLORPRI)
    .setLabel("")
    .setPosition(85, 190)
    .setSize(300, 40)
    .setFocus(true)
    .setAutoClear(false)
    ;
  cp5.addTextfield("Speed3")
    .setFont(font)
    .setColorBackground(COLORPRI)
    .setColorValue(COLORTEXT)
    .setColorCaptionLabel(COLORSEC)
    .setColorLabel(COLORSEC)
    .setColorForeground(COLORPRI)
    .setLabel("")
    .setPosition(85, 270)
    .setSize(300, 40)
    .setFocus(true)
    .setAutoClear(false)
    .getStringValue()
    ;
  cp5.addTextfield("Repeat")
    .setFont(font)
    .setColorBackground(COLORPRI)
    .setColorValue(COLORTEXT)
    .setColorCaptionLabel(COLORSEC)
    .setColorLabel(COLORSEC)
    .setColorForeground(COLORPRI)
    .setLabel("")
    .setPosition(85, 350)
    .setSize(300, 40)
    .setFocus(true)
    .setAutoClear(false)
    ;
    
    cp5.addTextfield("SubstrateSize")
    .setFont(font)
    .setColorBackground(COLORPRI)
    .setColorValue(COLORTEXT)
    .setColorCaptionLabel(COLORSEC)
    .setColorLabel(COLORSEC)
    .setColorForeground(COLORPRI)
    .setLabel("")
    .setPosition(85, 430)
    .setSize(300, 40)
    .setFocus(true)
    .setAutoClear(false)
    ;
  
  cp5.addTextfield("timeBottom1")
    .setFont(font)
    .setColorBackground(COLORPRI)
    .setColorValue(COLORTEXT)
    .setColorCaptionLabel(COLORSEC)
    .setColorLabel(COLORSEC)
    .setColorForeground(COLORPRI)
    .setLabel("")
    .setPosition(525, 120)
    .setSize(300, 40)
    .setFocus(true)
    .setAutoClear(false)
    ;
  cp5.addTextfield("timeBottom2")
    .setFont(font)
    .setColorBackground(COLORPRI)
    .setColorValue(COLORTEXT)
    .setColorCaptionLabel(COLORSEC)
    .setColorLabel(COLORSEC)
    .setColorForeground(COLORPRI)
    .setLabel("")
    .setPosition(525, 195)
    .setSize(300, 40)
    .setFocus(true)
    .setAutoClear(false)
    ;
  cp5.addTextfield("timeBottom3")
    .setFont(font)
    .setColorBackground(COLORPRI)
    .setColorValue(COLORTEXT)
    .setColorCaptionLabel(COLORSEC)
    .setColorLabel(COLORSEC)
    .setColorForeground(COLORPRI)
    .setLabel("")
    .setPosition(525, 270)
    .setSize(300, 40)
    .setFocus(true)
    .setAutoClear(false)
    ;
  cp5.addTextfield("timeTop1")
    .setFont(font)
    .setColorBackground(COLORPRI)
    .setColorValue(COLORTEXT)
    .setColorCaptionLabel(COLORSEC)
    .setColorLabel(COLORSEC)
    .setColorForeground(COLORPRI)
    .setLabel("")
    .setPosition(525, 365)
    .setSize(300, 40)
    .setFocus(true)
    .setAutoClear(false)
    ; 
  cp5.addTextfield("timeTop2")
    .setFont(font)
    .setColorBackground(COLORPRI)
    .setColorValue(COLORTEXT)
    .setColorCaptionLabel(COLORSEC)
    .setColorLabel(COLORSEC)
    .setColorForeground(COLORPRI)
    .setLabel("")
    .setPosition(525, 440)
    .setSize(300, 40)
    .setFocus(true)
    .setAutoClear(false)
    ; 
  cp5.addTextfield("timeTop3")
    .setFont(font)
    .setColorBackground(COLORPRI)
    .setColorValue(COLORTEXT)
    .setColorCaptionLabel(COLORSEC)
    .setColorLabel(COLORSEC)
    .setColorForeground(COLORPRI)
    .setLabel("")
    .setPosition(525, 515)
    .setSize(300, 40)
    .setFocus(true)
    .setAutoClear(false)
    ;   
  cp5.addSlider("Position", -100, 20, 0, 525, 605, 300, 30)
    .setNumberOfTickMarks(41)
    .setFont(font)
    .setColorBackground(COLORPRI)
    .setColorTickMark(COLORPRI)
    .setColorValue(COLORTEXT)
    .setColorActive(COLORBKG)
    .setColorForeground(COLORPRI) 
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
               .setColorForeground(COLORSEC)
               .setColorBackground(COLORPRI)
               .setColorActive(COLORSEC)
               .setColorValue(COLORSEC)
               .setColorCaptionLabel(COLORPRI)
               .setColorLabel(COLORPRI)
               .setDragDirection(Knob.HORIZONTAL)
               .setLabel("")
               ;
  cp5.addToggle("Type")
     .setPosition(290,540)
     .setSize(150,60)
     .setValue(true)
     .setColorForeground(COLORBKG)
     .setColorBackground(COLORPRI)
     .setColorActive(COLORSEC)
     .setColorValue(COLORBKG)
     .setColorCaptionLabel(COLORBKG)
     .setColorLabel(COLORBKG)
     .setMode(ControlP5.SWITCH)
     ;
  cp5.addButton("Confirm")
     .setPosition(1000,120)
     .setSize(120,60)
     .setFont(font)
     .setColorForeground(COLORSEC)
     .setColorBackground(COLORPRI)
     .setColorActive(COLORSEC)
     .setLabel("")
     ;
  cp5.addButton("loadpreset1")
     .setPosition(930,250)
     .setSize(100,30)
     .setFont(font)
     .setColorForeground(COLORSEC)
     .setColorBackground(COLORPRI)
     .setColorActive(COLORTEXT)
     .setLabel("")
     ;
  cp5.addButton("loadpreset2")
     .setPosition(1090,250)
     .setSize(100,30)
     .setFont(font)
     .setColorForeground(COLORSEC)
     .setColorBackground(COLORPRI)
     .setColorActive(COLORTEXT)
     .setLabel("")
     ;
  cp5.addButton("loadpreset3")
     .setPosition(930,350)
     .setSize(100,30)
     .setFont(font)
     .setColorForeground(COLORSEC)
     .setColorBackground(COLORPRI)
     .setColorActive(COLORTEXT)
     .setLabel("")
     ;
  cp5.addButton("loadpreset4")
     .setPosition(1090,350)
     .setSize(100,30)
     .setFont(font)
     .setColorForeground(COLORSEC)
     .setColorBackground(COLORPRI)
     .setColorActive(COLORTEXT)
     .setLabel("")
     ;
  cp5.addButton("loadpreset5")
     .setPosition(930,450)
     .setSize(100,30)
     .setFont(font)
     .setColorForeground(COLORSEC)
     .setColorBackground(COLORPRI)
     .setColorActive(COLORTEXT)
     .setLabel("")
     ;
  cp5.addButton("loadpreset6")
     .setPosition(1090,450)
     .setSize(100,30)
     .setFont(font)
     .setColorForeground(COLORSEC)
     .setColorBackground(COLORPRI)
     .setColorActive(COLORTEXT)
     .setLabel("")
     ;
  cp5.addButton("savepreset1")
     .setPosition(930,280)
     .setSize(100,30)
     .setFont(font)
     .setColorForeground(COLORSEC)
     .setColorBackground(COLORPRI)
     .setColorActive(COLORTEXT)
     .setLabel("")
     ;
  cp5.addButton("savepreset2")
     .setPosition(1090,280)
     .setSize(100,30)
     .setFont(font)
     .setColorForeground(COLORSEC)
     .setColorBackground(COLORPRI)
     .setColorActive(COLORTEXT)
     .setLabel("")
     ;
  cp5.addButton("savepreset3")
     .setPosition(930,380)
     .setSize(100,30)
     .setFont(font)
     .setColorForeground(COLORSEC)
     .setColorBackground(COLORPRI)
     .setColorActive(COLORTEXT)
     .setLabel("")
     ;
  cp5.addButton("savepreset4")
     .setPosition(1090,380)
     .setSize(100,30)
     .setFont(font)
     .setColorForeground(COLORSEC)
     .setColorBackground(COLORPRI)
     .setColorActive(COLORTEXT)
     .setLabel("")
     ;
  cp5.addButton("savepreset5")
     .setPosition(930,480)
     .setSize(100,30)
     .setFont(font)
     .setColorForeground(COLORSEC)
     .setColorBackground(COLORPRI)
     .setColorActive(COLORTEXT)
     .setLabel("")
     ;
  cp5.addButton("savepreset6")
     .setPosition(1090,480)
     .setSize(100,30)
     .setFont(font)
     .setColorForeground(COLORSEC)
     .setColorBackground(COLORPRI)
     .setColorActive(COLORTEXT)
     .setLabel("")
     ;
   Title = cp5.addTextlabel("label1")
                     .setText("Dip Coater Control")
                     .setPosition(520,10)
                     .setColorValue(COLORTEXT)
                     .setFont(createFont("Georgia",30))
                     ;
   B1 = cp5.addTextlabel("label2")
                     .setText("Time in Solution A (s)")
                     .setPosition(525,90)
                     .setColorValue(COLORTEXT)
                     .setFont(createFont("Georgia",16))
                     ;   
   B2 = cp5.addTextlabel("label3")
                     .setText("Time in Solution B (s)")
                     .setPosition(525,165)
                     .setColorValue(COLORTEXT)
                     .setFont(createFont("Georgia",16))
                     ;     
   B3 = cp5.addTextlabel("label4")
                     .setText("Time in Solution C (s)")
                     .setPosition(525,240)
                     .setColorValue(COLORTEXT)
                     .setFont(createFont("Georgia",16))
                     ;  
   T1 = cp5.addTextlabel("label5")
                     .setText("Drying Time #1 (s)")
                     .setPosition(525,335)
                     .setColorValue(COLORTEXT)
                     .setFont(createFont("Georgia",16))
                     ;
   T2 = cp5.addTextlabel("label6")
                     .setText("Drying Time #2 (s)")
                     .setPosition(525,410)
                     .setColorValue(COLORTEXT)
                     .setFont(createFont("Georgia",16))
                     ;    
   T3 = cp5.addTextlabel("label7")
                     .setText("Drying Time #3 (s)")
                     .setPosition(525,485)
                     .setColorValue(COLORTEXT)
                     .setFont(createFont("Georgia",16))
                     ;     
   P1 = cp5.addTextlabel("label8")
                     .setText("Load Preset 1")
                     .setPosition(935,255)
                     .setColorValue(COLORTEXT)
                     .setFont(createFont("Georgia",14))
                     ;
   P2 = cp5.addTextlabel("label9")
                     .setText("Load Preset 2")
                     .setPosition(1095,255)
                     .setColorValue(COLORTEXT)
                     .setFont(createFont("Georgia",14))
                     ;    
   P3 = cp5.addTextlabel("label10")
                     .setText("Load Preset 3")
                     .setPosition(935,355)
                     .setColorValue(COLORTEXT)
                     .setFont(createFont("Georgia",14))
                     ;   
   P4 = cp5.addTextlabel("label11")
                     .setText("Load Preset 4")
                     .setPosition(1095,355)
                     .setColorValue(COLORTEXT)
                     .setFont(createFont("Georgia",14))
                     ;      
   P5 = cp5.addTextlabel("label12")
                     .setText("Load Preset 5")
                     .setPosition(935,455)
                     .setColorValue(COLORTEXT)
                     .setFont(createFont("Georgia",14))
                     ;  
   P5 = cp5.addTextlabel("label13")
                     .setText("Load Preset 6")
                     .setPosition(1095,455)
                     .setColorValue(COLORTEXT)
                     .setFont(createFont("Georgia",14))
                     ;   
   Z1 = cp5.addTextlabel("label24")
                     .setText("Save Preset 1")
                     .setPosition(935,285)
                     .setColorValue(COLORTEXT)
                     .setFont(createFont("Georgia",14))
                     ;
   Z2 = cp5.addTextlabel("label25")
                     .setText("Save Preset 2")
                     .setPosition(1095,285)
                     .setColorValue(COLORTEXT)
                     .setFont(createFont("Georgia",14))
                     ;    
   Z3 = cp5.addTextlabel("label26")
                     .setText("Save Preset 3")
                     .setPosition(935,385)
                     .setColorValue(COLORTEXT)
                     .setFont(createFont("Georgia",14))
                     ;   
   Z4 = cp5.addTextlabel("label27")
                     .setText("Save Preset 4")
                     .setPosition(1095,385)
                     .setColorValue(COLORTEXT)
                     .setFont(createFont("Georgia",14))
                     ;      
   Z5 = cp5.addTextlabel("label28")
                     .setText("Save Preset 5")
                     .setPosition(935,485)
                     .setColorValue(COLORTEXT)
                     .setFont(createFont("Georgia",14))
                     ;  
   Z6 = cp5.addTextlabel("label29")
                     .setText("Save Preset 6")
                     .setPosition(1095,485)
                     .setColorValue(COLORTEXT)
                     .setFont(createFont("Georgia",14))
                     ;  
   NOS = cp5.addTextlabel("label14")
                     .setText("Numbers of Solution")
                     .setPosition(75,620)
                     .setColorValue(COLORTEXT)
                     .setFont(createFont("Georgia",20))
                     ;
   TYPE1 = cp5.addTextlabel("label15")
                     .setText("Beaker")
                     .setPosition(295,555)
                     .setColorValue(COLORPRI)
                     .setFont(createFont("Georgia",20))
                     ;   
   TYPE2 = cp5.addTextlabel("label23")
                     .setText("Tube")
                     .setPosition(375,555)
                     .setColorValue(COLORPRI)
                     .setFont(createFont("Georgia",20))
                     ;     
   START1 = cp5.addTextlabel("label16")
                     .setText("Start")
                     .setPosition(1024,125)
                     .setColorValue(COLORTEXT)
                     .setFont(createFont("Georgia",30))
                     ;      
   Sp1 = cp5.addTextlabel("label17")
                     .setText("Speed A (mm/min)")
                     .setPosition(80,80)
                     .setColorValue(COLORTEXT)
                     .setFont(createFont("Georgia",16))
                     ;         
   Rp = cp5.addTextlabel("label18")
                     .setText("Repeat")
                     .setPosition(80,320)
                     .setColorValue(COLORTEXT)
                     .setFont(createFont("Georgia",16))
                     ; 
   Po = cp5.addTextlabel("label20")
                     .setText("Position (mm)")
                     .setPosition(525,575)
                     .setColorValue(COLORTEXT)
                     .setFont(createFont("Georgia",16))
                     ;  
   Sp2 = cp5.addTextlabel("label21")
                     .setText("Speed B (mm/min)")
                     .setPosition(80,160)
                     .setColorValue(COLORTEXT)
                     .setFont(createFont("Georgia",16))
                     ;      
   Sp3 = cp5.addTextlabel("label22")
                     .setText("Speed C (mm/min)")
                     .setPosition(80,240)
                     .setColorValue(COLORTEXT)
                     .setFont(createFont("Georgia",16))
                     ;      
   SS = cp5.addTextlabel("label30")
                     .setText("Substrate Length (mm)")
                     .setPosition(80,400)
                     .setColorValue(COLORTEXT)
                     .setFont(createFont("Georgia",16))
                     ;                      
}    
void draw(){
  background(COLORBKG);
  fill(COLOROL);
  rect(50, 60, 420, 430);
  fill(COLORBKG);
  rect(60, 70, 400, 410);
  fill(COLOROL);
  rect(50, 490, 420, 180);
  fill(COLORBKG);
  rect(60, 500, 400, 160);  
  fill(COLOROL);
  rect(470, 60, 420, 610);
  fill(COLORBKG);
  rect(480, 70, 400, 590);
  fill(COLOROL);
  rect(890, 60, 340, 160);
  fill(COLORBKG);
  rect(900, 70, 320, 150);
  fill(COLOROL);
  rect(990, 110, 140, 80);
  rect(890, 220, 340, 450);
  fill(COLORBKG);
  rect(900, 230, 320, 430);
  image(img, 1000, 530, img.width/7, img.height/7);
  RunTime =  157/(1400/60)+150/(1400/60)*NumbersOfSolution*int(Repeat)+24.1/10*NumbersOfSolution*int(Repeat)+24.1/(int(Speed1)/60)*int(Repeat)+24.1/(int(Speed2)/60)*int(Repeat)+24.1/(int(Speed3)/60)*int(Repeat);
  HoldTime = (int(timeBottom1)+int(timeBottom2)+int(timeBottom3)+int(timeTop1)+int(timeTop2)+int(timeTop3))*int(Repeat);
  ET = RunTime + HoldTime;
  fill(COLORTEXT);
  textSize(20);
  text("Estimated Time: "+str(ET)+"s", 60, 700); 
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

public void SubstrateSize(String theSize){
  SubstrateSize = theSize;
  println("Substrate Length = "+SubstrateSize);
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
  SubstrateSize= cp5.get(Textfield.class,"SubstrateSize").getText();
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
  SubstrateSize= cp5.get(Textfield.class,"SubstrateSize").getText();
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
  SubstrateSize= cp5.get(Textfield.class,"SubstrateSize").getText();
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
  SubstrateSize= cp5.get(Textfield.class,"SubstrateSize").getText();
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
  SubstrateSize= cp5.get(Textfield.class,"SubstrateSize").getText();
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
  SubstrateSize= cp5.get(Textfield.class,"SubstrateSize").getText();
  cp5.saveProperties(("preset6"));
}

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
  SubstrateSize= cp5.get(Textfield.class,"SubstrateSize").getText();
  port.write("A"+Speed1+"B"+Repeat+"C"+timeBottom1+"D"+timeBottom2+"E"+timeBottom3+"F"+timeTop1+"G"+timeTop2+"H"+timeTop3+"I"+NumbersOfSolution+"J"+Position+"K"+Speed2+"L"+Speed3+"M"+Type1+"N"+SubstrateSize+"O");
  println("A"+Speed1+"B"+Repeat+"C"+timeBottom1+"D"+timeBottom2+"E"+timeBottom3+"F"+timeTop1+"G"+timeTop2+"H"+timeTop3+"I"+NumbersOfSolution+"J"+Position+"K"+Speed2+"L"+Speed3+"M"+Type1+"N"+SubstrateSize+"O");
}
