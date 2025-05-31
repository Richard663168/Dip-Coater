# Dip-Coater
**Design of an Inexpensive, Microcontroller-based Dip Coater for Automated Thin Film Deposition**  

<p align="center">  
<img src="https://github.com/Richard663168/Dip-Coater/assets/111383687/2ffeb6db-35d4-4c3a-a76d-050c42e80296" alt="dipcoater" width="400">  
  
**Animated Dip Coater Assembly Video**: https://youtu.be/RGj2P8bEvw4?si=eDrItM7gs5JFvn3  

  
Sections in this README:  

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
| [8-channel Bi-directional Logic Level Converter](https://www.adafruit.com/product/395?gclid=EAIaIQobChMIy_Wgl5aa-wIVg4zICh11Gg8HEAAYASAAEgIM5PD_BwE)|  1 | $7.95 for 1 |Adafruit Industries |
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

The labels on the designs are for illustration only. It is recommanded to delete those labels before laser cutting or the labels might be engraved onto the final product. For Epilog laser cutters, the widths of the lines for laser cutting need to be set to 0.001pt and the area for engraving need to be filled black.

## Circuit Design

<p align="center">  
<img src="https://github.com/Richard663168/Dip-Coater/assets/111383687/9f64b7ac-65f1-42dc-9353-559c79eef468" alt="dipcoater_ciruit" width="700">  
  
Breadboards shown in the circuit diagram are not required. It is recommanded to use solder or heat shrinking tubes to connect wires to electronic components and other wires in order to secure the connections.

## Assembly Instructions  
The **Complete Dip Coater** CAD file could be used as a reference on how to assemble the dip coater.  
1. Glue board **#3** and board **#2** onto board **#1**; Note that the back of the three pieces should not align: there is a 6mm distance between the back of board **#1** and the backs of both boards **#2** and **#3**
<p align="center">  
<img width="1080" alt="Screen Shot 2023-09-02 at 2 01 22 AM" src="https://github.com/Richard663168/Dip-Coater/assets/111383687/f75e3e65-8c3a-413e-af7e-cb195734d7b7">  

  
2. Use sandpaper or other sanding tools to make the edge of board **#4** fit the base and screw in the **ST7789 2.4” SPI LCD**, 2 **12V push buttons**, and the **3 x 4 keypad**
3. Glue board **#4** onto the dip coater
<p align="center">  
<img width="966" alt="Screen Shot 2023-09-02 at 1 59 03 AM" src="https://github.com/Richard663168/Dip-Coater/assets/111383687/4bc61beb-45e2-4585-b3db-d52c412958e7">

4.  Glue **Nema 17 Holder** onto the dip coater and place the **Nema 17 motor** inside
<p align="center">  
<img width="1012" alt="Screen Shot 2023-09-02 at 1 59 11 AM" src="https://github.com/Richard663168/Dip-Coater/assets/111383687/b79a3ad2-8e22-43bc-9e4b-245f071a2ec0">

5. Glue boards **#5**, **#6**, and **#7** onto dip coater
<p align="center">  
<img width="1025" alt="Screen Shot 2023-09-02 at 1 59 18 AM" src="https://github.com/Richard663168/Dip-Coater/assets/111383687/21f8faef-05d3-445d-8c0e-884937eb2966">

6. Glue board **#8** onto the dip coater
<p align="center">  
<img width="1017" alt="Screen Shot 2023-09-02 at 1 59 25 AM" src="https://github.com/Richard663168/Dip-Coater/assets/111383687/c928b5df-a921-44a7-bbf5-d0639e1354ae">

7. Mount **FUYU FSL30 Mini Linear Stage Small Slide** onto board **#8** using screws
<p align="center">  
<img width="1006" alt="Screen Shot 2023-09-02 at 1 59 34 AM" src="https://github.com/Richard663168/Dip-Coater/assets/111383687/bf5fb6e7-29bf-4d56-9f37-444f7cd1e26f">

8. Connect all electronic components inside the dip coater based on the circuit diagram; USB cable and 2.1 x 5.5 power cable can come out through holes on board **#2**
9. Connect board **#9** to the dip coater using L-shape screw brackets, making future repairs and replacements easier
<p align="center">  
<img width="1042" alt="Screen Shot 2023-09-02 at 2 06 16 AM" src="https://github.com/Richard663168/Dip-Coater/assets/111383687/2a86eb12-f963-477d-9501-c7c42ee3a4b1">

10. Connect board **#10** to the dip coater using L-shape screw brackets, making future repairs and replacements easier
<p align="center">  
<img width="1042" alt="Screen Shot 2023-09-02 at 1 59 59 AM" src="https://github.com/Richard663168/Dip-Coater/assets/111383687/4b41c9c2-da64-4b30-af51-34b0ed8caffb">

11. Stick **1/2 inch OD Steel Disk** onto **Substrate Holder Connector** and **1/2 inch OD Neodymium Magnet** and a **clip** onto **Substrate Holder**
<p align="center">  
<img width="949" alt="Screen Shot 2023-09-02 at 2 00 06 AM" src="https://github.com/Richard663168/Dip-Coater/assets/111383687/f47c7457-2a73-4cdb-9f69-f12343682e53">

12. Stick **1 inch OD Steel Disk** onto **Disk Base** and **1 inch OD Neodymium Magnet** onto **Beaker Disk**
<p align="center">  
<img width="983" alt="Screen Shot 2023-09-02 at 2 00 17 AM" src="https://github.com/Richard663168/Dip-Coater/assets/111383687/fc2f7b9d-1340-4e4e-a160-230acbe0659d">


13. Attach **Substrate Holder Connector**, **Substrate Holder**, **Disk Base**, and **Beaker Disk** onto the dip coater; note that **Substrate Holder** and **Beaker Disk** can be removed or reattached anytime
<p align="center">  
<img width="842" alt="Screen Shot 2023-09-02 at 3 26 17 PM" src="https://github.com/Richard663168/Dip-Coater/assets/111383687/3c0d5274-19ed-4127-9ed5-ddf1d66c2cac">

14. Upload Arduino program provided in this repository to **Arduino Mega Microcontroller**
15. Download Processing and open **Dip Coater Graphic User Interface** provided in this repository to start using the dip coater
## Using the Dip Coater<img width="1262" alt="Screenshot 2025-05-30 at 8 23 23 PM" src="https://github.com/user-attachments/assets/488f054c-703d-4bf0-8c7f-6b7234d4022d" />
 
  
* Once the Processing file is opened, **Line 94 needs to be adjusted** based on the name of the PC's USB port before running the program.
* For each solution placed on the beaker disk, the user is able to choose the speed of which the substrate come out.
* The hold time (drying time) on top and the time that substrate is submerged in solution (time in solution) can be set.
* The number of solutions placed on the beaker disk can be set to 1, 2, or 3.
  * If the number of solutions is selected to be 1, the substrate will only go into solution 1 repeatly.
  * If the number of solutions is selected to be 2 or 3, the substrate will alternate among the selected solutions.
* How deep the substrate goes into the solutions can be adjusted using the Position slider
  * negative numbers indicate milimiters higher than the default height and positive numbers indicate milimiters lower than the default height.
* On the right side of the control panel, the user can save and load presets.
* Once all parameters are set and the **Start** button is clicked, the dip coater will start.
* **12V push buttons** on the dip coater are for manual calibration of the linear actuator (They are rarely needed).
* **3 x 4 keypad** is for manual calibration of the position of the beaker disk.

