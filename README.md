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

## Materials  
Links provided below are only for reference.  

Electronic Components
| Item | Quantity | Reference Price | Source |
| ------------- | ------------- |------------- |------------- |
| [Arduino Mega 2560](https://www.amazon.com/ARDUINO-MEGA-2560-REV3-A000067/dp/B0046AMGW0)| 1  | $20.99 for 1|Amazon |
| ST7789 2.4” SPI LCD | 1  | $6.99 for 1| Taobao|
| [Nema 17 Stepper Motor](https://www.amazon.com/dp/B07THK76QQ/ref=twister_B07ZVLYL25?_encoding=UTF8&psc=1)  |1  | $10.99 for 1|Amazon|
| [2.1x5.5 12V Power Barrel](https://www.mcmaster.com/8320N117)  | 1 | $1.24 for 1|McMaster-Carr|
|[ DM542T Stepper Motor Driver  ](https://www.amazon.com/dp/B06Y5VPSFN?psc=1&ref=ppx_yo2ov_dt_b_product_details)| 1 | $28.99 for 1|Amazon|
| [DM320T Stepper Motor Driver](https://www.amazon.com/gp/product/B075R88FMN/ref=ppx_yo_dt_b_search_asin_title?ie=UTF8&psc=1)  | $15.99 for 1  | Content Cell |Amazon |
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

The labels on the designs are for illustration only. It is recommanded to delete those labels before laser cutting or the labels might be engraved onto the final product. For Epilog laser cutters, the widths of the lines for laser cutting need to be set to 0.001pt.  

## Circuit Design
