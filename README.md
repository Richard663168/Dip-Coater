# Dip-Coater
Design of an Inexpensive, Microcontroller-based Dipcoater for Automated Thin Film Deposition  
<p align="center">  
<img src="https://github.com/Richard663168/Dip-Coater/assets/111383687/2ffeb6db-35d4-4c3a-a76d-050c42e80296" alt="dipcoater" width="400">  
  
**Animated Dip Coater Assembly Video**: https://youtu.be/RGj2P8bEvw4?si=eDrItM7gs5JFvn3  

  
Sections in this ReadMe:  

[1. Materials](#materials)

[2. 3D Printing Instructions](#3d-printing-instructions)

[3. Laser Cutting Instructions](#laser-cutting-instructions)  

[4. Circuit Design](#circuit-design)  

[5. Assembly Instructions](#assembly-instructions)  

[6. Using the Dip Coater](#using-the-dip-coater)  

## Materials  
Links provided below are only for reference.  

**Main Components**
| Item | Quantity | Reference Price | Source |
| ------------- | ------------- |------------- |------------- |
| [Arduino Mega 2560](https://www.amazon.com/ARDUINO-MEGA-2560-REV3-A000067/dp/B0046AMGW0)| 1  | $20.99 for 1|Amazon |
| ST7789 2.4” SPI LCD | 1  | $6.99 for 1| Taobao|
| [Nema 17 Stepper Motor](https://www.amazon.com/dp/B07THK76QQ/ref=twister_B07ZVLYL25?_encoding=UTF8&psc=1)  |1  | $10.99 for 1|Amazon|
| [2.1x5.5 12V Power Barrel](https://www.mcmaster.com/8320N117)  | 1 | $1.24 for 1|McMaster-Carr|
|[ DM542T Stepper Motor Driver  ](https://www.amazon.com/dp/B06Y5VPSFN?psc=1&ref=ppx_yo2ov_dt_b_product_details)| 1 | $28.99 for 1|Amazon|
| [DM320T Stepper Motor Driver](https://www.amazon.com/gp/product/B075R88FMN/ref=ppx_yo_dt_b_search_asin_title?ie=UTF8&psc=1)  |  1 | $15.99 for 1 |Amazon |
| [3x4 Matrix Keypad](https://www.adafruit.com/product/3845) |  1 | $6.50 for 1 |Adafruit Industries |
| [Screw Terminal Block Breakout Module for Arduino Mega](https://a.co/d/3ki64ex)  |  1 | $32.00 for 1 |Amazon |
| [FUYU FSL30 Mini Linear Stage Small Slide](https://a.co/d/0F66fWm)  |  1 | $118.00 for 1 |Amazon |
| [8-channel Bi-directional Logic Level Converter - TXB0108](https://www.adafruit.com/product/395?gclid=EAIaIQobChMIy_Wgl5aa-wIVg4zICh11Gg8HEAAYASAAEgIM5PD_BwE)|  1 | $7.95 for 1 |Adafruit Industries |
| [12V Push Button](https://www.amazon.com/gp/product/B08ZN73P2N/ref=ppx_yo_dt_b_search_asin_title?ie=UTF8&psc=1)  |  1 | $15.99 for 10 |Amazon |  
| [1 inch OD Steel Disk](https://a.co/d/e3l3wQv)  |  1 | $18.99 for 50 |Amazon |  
| [1/2 inch OD Steel Disk](https://a.co/d/1EjGdAq)  |  1 | $16.99 for 80 |Amazon |  
| [1 inch OD Neodymium magnet](https://www.mcmaster.com/7048T63)  |  1 | $8.57 for 1 |McMaster-Carr |  
| [1/2 inch OD Neodymium magnet](https://www.mcmaster.com/7048T56)  |  1 | $4.89 for 1 |McMaster-Carr |  

**Other Materials**
* 4 6mm 12" x 24" black acrylic sheets
* Wires
* Super glue
* 1 USB cable
* 1 2.1 x 5.5 12V power cable
* L-shape screw brackets
* Screws
* Clips
  
Black acrylic sheets could be replaced by other 6mm-thick laser cuttable materials.
## 3D Printing Instructions
3D printing files: Complete files are included in this current repository including .stl file format to be directly printable after slicing and .step file format to allow easy import and manipulation in most CAD software. All models were designed using Autodesk Fusion 360.

Designs are printed out using the Stratasys Elite and Stratasys Mojo with a layer height of 0.178mm (0.007in) and ABS plus P430 as the printing material.   

<details>

<summary>Printing Parts</summary>

* Beaker Disk
* Substrate Holder Connector
* Nema 17 Motor Holder
* Substrate Holder
* Disk Holder
* Tube Disk (Optional)
![Asset 2@12x](https://github.com/Richard663168/Dip-Coater/assets/111383687/f46fb8d5-ff59-4bc5-83c4-35a68b633868)

</details>

## Laser Cutting Instructions
Laser Cutting files: Complete files are included in this current repository including .ai file format and .svg file format. All models were designed using Adobe Illustrator. Designs are laser cut using Epilog mini and Epilog Fusion with 6mm 12"x24" black acrylic sheets.  

The labels on the designs are for illustration only. It is recommanded to delete those labels before laser cutting or the labels might be engraved onto the final product. For Epilog laser cutters, the widths of the lines for laser cutting need to be set to 0.001pt and the area for engraving need to be filled with black.

## Circuit Design

<p align="center">  
<img src="https://github.com/Richard663168/Dip-Coater/assets/111383687/9f64b7ac-65f1-42dc-9353-559c79eef468" alt="dipcoater_ciruit" width="700">  
  
Breadboards shown in the circuit diagram are not required. It is recommanded to use solder or heat shrinking tubes to connect wires to electronic compoenents and other wires in order to secure the connections.

## Assembly Instructions  
The **Complete Dip Coater** CAD file could be used as a reference on how to assemble the dip coater.  
1. Glue board **#3** and board **#2** onto board **#1**; Note that the back of the three pieces should not align: there is a 6mm distance between the back of board **#1** and the backs of both boards **#2** and **#3**.  
![Asset 1](https://github.com/Richard663168/Dip-Coater/assets/111383687/456979d9-a4ce-4c2a-936a-b3ef924e1bcd)
2. Use sandpaper or other sanding tools to make the edge of board **#4** fit the base and screw in the **ST7789 2.4” SPI LCD**, 2 **12V push buttons**, and the **3 x 4 keypad**
3. Glue the board **#4** onto the dip coater
![Asset 2](https://github.com/Richard663168/Dip-Coater/assets/111383687/926be3ac-135b-43c5-adc7-4c0ec8040058)
4.  Glue **Nema 17 Holder** onto the dip coater and place the **Nema 17 motor** inside
![Asset 4@12x](https://github.com/Richard663168/Dip-Coater/assets/111383687/795a16d0-ac1d-4f70-8613-9bbca7986a63)
5. Glue boards **#5**, **#6**, and **#7** onto dip coater
![Asset 6@12x](https://github.com/Richard663168/Dip-Coater/assets/111383687/f969e752-09bd-4437-8688-49fcd14682bd)
6. Glue board **#8** onto the dip coater
![Asset 7@12x](https://github.com/Richard663168/Dip-Coater/assets/111383687/572250c7-a2bb-48dd-be4a-bb1366dea6c7)
7. Mount **FUYU FSL30 Mini Linear Stage Small Slide** onto board **#8** using screws
![Asset 7@12x](https://github.com/Richard663168/Dip-Coater/assets/111383687/ecb5d449-58ed-4ba5-8df9-d45f023660bd)
8. Connect all electronic components inside the dip coater based on the circuit diagram; USB cable and 2.1 x 5.5 power cable can come out through holes on board **#2**
9. Connect board **#9** to the dip coater using L-shape screw brackets, making future repairs and replacements easier
![Asset 8@12x](https://github.com/Richard663168/Dip-Coater/assets/111383687/f4df0fcc-629c-452d-8f9e-3c92304395ff)
10. Connect board **#10** to the dip coater using L-shape screw brackets, making future repairs and replacements easier
![Asset 9@12x](https://github.com/Richard663168/Dip-Coater/assets/111383687/7a7d1fff-f0db-4a06-8be5-578a910b8a89)
11. Stick **1/2 inch OD Steel Disk** onto **Substrate Holder Connector** and **1/2 inch OD Neodymium Magnet** and a **clip** onto **Substrate Holder**
![Asset 10@12x](https://github.com/Richard663168/Dip-Coater/assets/111383687/e89f8844-bcfe-4930-92ee-b6f91d38fd9e)
12. Stick **1 inch OD Steel Disk** onto **Disk Base** and **1 inch OD Neodymium Magnet** onto **Beaker Disk**
![Asset 11@12x](https://github.com/Richard663168/Dip-Coater/assets/111383687/411f9aa4-465e-4efb-af9f-62558674452c)
13. Attach **Substrate Holder Connector**, **Substrate Holder**, **Disk Base**, and **Beaker Disk** onto the dip coater; note that **Substrate Holder** and **Beaker Disk** can be removed or reattached anytime
<p align="center">  
<img src=""https://github.com/Richard663168/Dip-Coater/assets/111383687/a26c49de-f02e-4f5f-89eb-ef91db1ba7ff" alt="dipcoater step 13" width="400"> 
15. Upload Arduino program provided in this repository to **Arduino Mega Microcontroller**
16. Download Processing and open **Dip Coater Graphic User Interface** provided in this repository to start using the dip coater


