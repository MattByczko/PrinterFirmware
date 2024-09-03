
; ### Ellis' Pressure Advance / Linear Advance Calibration Tool ###
;
; Original Marlin linear advance calibration tool by Sineos [https://github.com/Sineos]
; Heavily modified/rewritten by Andrew Ellis [https://github.com/AndrewEllis93]
;
; -------------------------------------------
; Generated: Wed Sep 04 2024 08:00:18 GMT+0930 (Australian Central Standard Time)
; -------------------------------------------
;
; Advanced Mode: false
;
; Printer:
;  - Firmware: marlin1_1_9
;  - Bed Shape: Rect
;  - Bed Size X: 200 mm
;  - Bed Size Y: 200 mm
;  - Origin Bed Center: false
;  - Travel Speed: 100 mm/s
;  - Nozzle Diameter: 0.4 mm
;  - Filament Diameter: 1.75 mm
;  - Extrusion Multiplier: 0.98
;
; Retraction / Z Hop:
;  - Retraction Distance: 2.5 mm
;  - Retract Speed: 55 mm/s
;  - Unretract Speed: 55 mm/s
;  - Z Hop Enable: true
;  - Z Hop Height: 0.2mm
;
; First Layer Settings:
;  - First Layer Height: 0.3 mm
;  - First Layer Printing Speed: 50 mm/s
;  - First Layer Fan Speed: 100%
;  - Anchor Option: no_anchor
;
; Print Settings:
;  - Layer Height: 0.3 mm
;  - Print Speed: 100 mm/s
;  - Acceleration: Disabled
;  - Fan Speed: 100%
;
; Pressure Advance Stepping:
;  - LA Start Value: 0.3
;  - LA End Value: 0.9
;  - LA Increment: 0.05
;
; Start / End G-code:
;  - Hotend Temp: 220C
;  - Bed Temp: 1C
;  - Don't Add G28: false
;  - Don't Add Heating G-Codes: false
;  - Entered Start G-code: 
;       G21 ;metric is good!
;       G90 ;absolute position
;       G28 ;Home
;       M190 S1 ; Set & wait for bed temp
;       M109 S220 ; Set & wait for hotend temp
;       M420 S1 ;Load manual mesh
;       G1 Z0.67 ;
;       G92 Z0 ;
;       G92 E0 ; Reset extruder
;       G1 E5 ; Extrude a little
;       G92 E0 ;Reset extruder
;       G1 Z15.0 F6000 ;Move the platform down to 15mm
;       G1 X0 Y0 ;Go to 0,0
;       G1 Z0.20 ;start wipe code
;       G92 E0 ; zero the extruded length
;       G1 X60 E9 F1000 ; start purge line
;       G1 X100 E12.5 F1000 ; finish purge line
;       G1 X120 F4000
;       G92 E0 ; zero the extruded length
;       G1 E-1 F500 ; Retract a little
;       G1 Z0.3 ; Raise and begin printing.
;  - Entered End G-code: 
;       M501 ; Load settings from EEPROM (to restore previous values)
;
; Calculated Values:
;  - Print Size X: 67.53 mm
;  - Print Size Y: 50.99 mm
;  - Number of Patterns to Print: 13
;  - LA Values: 0.3, 0.35, 0.4, 0.45, 0.5, 0.55, 0.6, 0.65, 0.7, 0.75, 0.8, 0.85, 0.9
;
; Prepare printing
;
G21 ;metric is good!
G90 ;absolute position
G28 ;Home
M190 S1 ; Set & wait for bed temp
M109 S220 ; Set & wait for hotend temp
M420 S1 ;Load manual mesh
G1 Z0.67 ;
G92 Z0 ;
G92 E0 ; Reset extruder
G1 E5 ; Extrude a little
G92 E0 ;Reset extruder
G1 Z15.0 F6000 ;Move the platform down to 15mm
G1 X0 Y0 ;Go to 0,0
G1 Z0.20 ;start wipe code
G92 E0 ; zero the extruded length
G1 X60 E9 F1000 ; start purge line
G1 X100 E12.5 F1000 ; finish purge line
G1 X120 F4000
G92 E0 ; zero the extruded length
G1 E-1 F500 ; Retract a little
G1 Z0.3 ; Raise and begin printing.
G21 ; Millimeter units
G90 ; Absolute XYZ
M83 ; Relative E
G92 E0 ; Reset extruder distance
;
;  Begin printing
;
M106 S255 ; Set fan speed
G1 E-2.5 F3300 ; Retract
G0 Z5 F6000 ; Z raise
G0 X66.2365 Y74.5068 F6000 ; Move to start position
G0 Z0.3 F6000 ; Move to start layer height
G1 E2.5 F3300 ; Un-retract
M900 K0.3 ; Set linear advance k factor to start value
M117 LA 0.3
G0 Z0.3 F6000 ; Move to layer height
M900 K0.3 ; Set linear advance k factor to start value for numbering
M117 LA 0.3
G1 E-2.5 F3300 ; Retract
G1 Z0.5 F6000 ; Z hop
G0 X67.5165 Y118.3832 F6000 ; Move
G1 Z0.3 F6000 ; Z hop return
G1 E2.5 F3300 ; Un-retract
G1 X69.5165 Y118.3832 E0.09427 F3000 ; Glyph: 0
G1 X71.5165 Y118.3832 E0.09427 F3000 ; Glyph: 0
G1 X71.5165 Y120.3832 E0.09427 F3000 ; Glyph: 0
G1 X69.5165 Y120.3832 E0.09427 F3000 ; Glyph: 0
G1 X67.5165 Y120.3832 E0.09427 F3000 ; Glyph: 0
G1 X67.5165 Y118.3832 E0.09427 F3000 ; Glyph: 0
G1 E-2.5 F3300 ; Retract
G1 Z0.5 F6000 ; Z hop
G0 X71.5165 Y121.3832 F6000 ; Move
G1 Z0.3 F6000 ; Z hop return
G1 E2.5 F3300 ; Un-retract
G1 X70.7665 Y121.3832 E0.03535 F3000 ; Glyph: .
G1 E-2.5 F3300 ; Retract
G1 Z0.5 F6000 ; Z hop
G0 X67.5165 Y122.3832 F6000 ; Move
G1 Z0.3 F6000 ; Z hop return
G1 E2.5 F3300 ; Un-retract
G1 X67.5165 Y124.3832 E0.09427 F3000 ; Glyph: 3
G1 X69.5165 Y124.3832 E0.09427 F3000 ; Glyph: 3
G1 X69.5165 Y122.3832 E0.09427 F3000 ; Glyph: 3
G0 X69.5165 Y124.3832 F6000 ; Move
G1 X71.5165 Y124.3832 E0.09427 F3000 ; Glyph: 3
G1 X71.5165 Y122.3832 E0.09427 F3000 ; Glyph: 3
G1 E-2.5 F3300 ; Retract
G1 Z0.5 F6000 ; Z hop
G0 X74.5979 Y118.3832 F6000 ; Move
G1 Z0.3 F6000 ; Z hop return
G1 E2.5 F3300 ; Un-retract
G1 X76.5979 Y118.3832 E0.09427 F3000 ; Glyph: 0
G1 X78.5979 Y118.3832 E0.09427 F3000 ; Glyph: 0
G1 X78.5979 Y120.3832 E0.09427 F3000 ; Glyph: 0
G1 X76.5979 Y120.3832 E0.09427 F3000 ; Glyph: 0
G1 X74.5979 Y120.3832 E0.09427 F3000 ; Glyph: 0
G1 X74.5979 Y118.3832 E0.09427 F3000 ; Glyph: 0
G1 E-2.5 F3300 ; Retract
G1 Z0.5 F6000 ; Z hop
G0 X78.5979 Y121.3832 F6000 ; Move
G1 Z0.3 F6000 ; Z hop return
G1 E2.5 F3300 ; Un-retract
G1 X77.8479 Y121.3832 E0.03535 F3000 ; Glyph: .
G1 E-2.5 F3300 ; Retract
G1 Z0.5 F6000 ; Z hop
G0 X74.5979 Y124.3832 F6000 ; Move
G1 Z0.3 F6000 ; Z hop return
G1 E2.5 F3300 ; Un-retract
G1 X76.5979 Y124.3832 E0.09427 F3000 ; Glyph: 4
G1 X78.5979 Y124.3832 E0.09427 F3000 ; Glyph: 4
G0 X76.5979 Y124.3832 F6000 ; Move
G1 X76.5979 Y122.3832 E0.09427 F3000 ; Glyph: 4
G1 X74.5979 Y122.3832 E0.09427 F3000 ; Glyph: 4
G1 E-2.5 F3300 ; Retract
G1 Z0.5 F6000 ; Z hop
G0 X81.6793 Y118.3832 F6000 ; Move
G1 Z0.3 F6000 ; Z hop return
G1 E2.5 F3300 ; Un-retract
G1 X83.6793 Y118.3832 E0.09427 F3000 ; Glyph: 0
G1 X85.6793 Y118.3832 E0.09427 F3000 ; Glyph: 0
G1 X85.6793 Y120.3832 E0.09427 F3000 ; Glyph: 0
G1 X83.6793 Y120.3832 E0.09427 F3000 ; Glyph: 0
G1 X81.6793 Y120.3832 E0.09427 F3000 ; Glyph: 0
G1 X81.6793 Y118.3832 E0.09427 F3000 ; Glyph: 0
G1 E-2.5 F3300 ; Retract
G1 Z0.5 F6000 ; Z hop
G0 X85.6793 Y121.3832 F6000 ; Move
G1 Z0.3 F6000 ; Z hop return
G1 E2.5 F3300 ; Un-retract
G1 X84.9293 Y121.3832 E0.03535 F3000 ; Glyph: .
G1 E-2.5 F3300 ; Retract
G1 Z0.5 F6000 ; Z hop
G0 X81.6793 Y124.3832 F6000 ; Move
G1 Z0.3 F6000 ; Z hop return
G1 E2.5 F3300 ; Un-retract
G1 X81.6793 Y122.3832 E0.09427 F3000 ; Glyph: 5
G1 X83.6793 Y122.3832 E0.09427 F3000 ; Glyph: 5
G1 X83.6793 Y124.3832 E0.09427 F3000 ; Glyph: 5
G1 X85.6793 Y124.3832 E0.09427 F3000 ; Glyph: 5
G1 X85.6793 Y122.3832 E0.09427 F3000 ; Glyph: 5
G1 E-2.5 F3300 ; Retract
G1 Z0.5 F6000 ; Z hop
G0 X88.7607 Y118.3832 F6000 ; Move
G1 Z0.3 F6000 ; Z hop return
G1 E2.5 F3300 ; Un-retract
G1 X90.7607 Y118.3832 E0.09427 F3000 ; Glyph: 0
G1 X92.7607 Y118.3832 E0.09427 F3000 ; Glyph: 0
G1 X92.7607 Y120.3832 E0.09427 F3000 ; Glyph: 0
G1 X90.7607 Y120.3832 E0.09427 F3000 ; Glyph: 0
G1 X88.7607 Y120.3832 E0.09427 F3000 ; Glyph: 0
G1 X88.7607 Y118.3832 E0.09427 F3000 ; Glyph: 0
G1 E-2.5 F3300 ; Retract
G1 Z0.5 F6000 ; Z hop
G0 X92.7607 Y121.3832 F6000 ; Move
G1 Z0.3 F6000 ; Z hop return
G1 E2.5 F3300 ; Un-retract
G1 X92.0107 Y121.3832 E0.03535 F3000 ; Glyph: .
G1 E-2.5 F3300 ; Retract
G1 Z0.5 F6000 ; Z hop
G0 X88.7607 Y124.3832 F6000 ; Move
G1 Z0.3 F6000 ; Z hop return
G1 E2.5 F3300 ; Un-retract
G1 X88.7607 Y122.3832 E0.09427 F3000 ; Glyph: 6
G1 X90.7607 Y122.3832 E0.09427 F3000 ; Glyph: 6
G1 X92.7607 Y122.3832 E0.09427 F3000 ; Glyph: 6
G1 X92.7607 Y124.3832 E0.09427 F3000 ; Glyph: 6
G1 X90.7607 Y124.3832 E0.09427 F3000 ; Glyph: 6
G1 X90.7607 Y122.3832 E0.09427 F3000 ; Glyph: 6
G1 E-2.5 F3300 ; Retract
G1 Z0.5 F6000 ; Z hop
G0 X95.8421 Y118.3832 F6000 ; Move
G1 Z0.3 F6000 ; Z hop return
G1 E2.5 F3300 ; Un-retract
G1 X97.8421 Y118.3832 E0.09427 F3000 ; Glyph: 0
G1 X99.8421 Y118.3832 E0.09427 F3000 ; Glyph: 0
G1 X99.8421 Y120.3832 E0.09427 F3000 ; Glyph: 0
G1 X97.8421 Y120.3832 E0.09427 F3000 ; Glyph: 0
G1 X95.8421 Y120.3832 E0.09427 F3000 ; Glyph: 0
G1 X95.8421 Y118.3832 E0.09427 F3000 ; Glyph: 0
G1 E-2.5 F3300 ; Retract
G1 Z0.5 F6000 ; Z hop
G0 X99.8421 Y121.3832 F6000 ; Move
G1 Z0.3 F6000 ; Z hop return
G1 E2.5 F3300 ; Un-retract
G1 X99.0921 Y121.3832 E0.03535 F3000 ; Glyph: .
G1 E-2.5 F3300 ; Retract
G1 Z0.5 F6000 ; Z hop
G0 X95.8421 Y122.3832 F6000 ; Move
G1 Z0.3 F6000 ; Z hop return
G1 E2.5 F3300 ; Un-retract
G1 X95.8421 Y124.3832 E0.09427 F3000 ; Glyph: 7
G1 X97.8421 Y124.3832 E0.09427 F3000 ; Glyph: 7
G1 X99.8421 Y124.3832 E0.09427 F3000 ; Glyph: 7
G1 E-2.5 F3300 ; Retract
G1 Z0.5 F6000 ; Z hop
G0 X102.9235 Y118.3832 F6000 ; Move
G1 Z0.3 F6000 ; Z hop return
G1 E2.5 F3300 ; Un-retract
G1 X104.9235 Y118.3832 E0.09427 F3000 ; Glyph: 0
G1 X106.9235 Y118.3832 E0.09427 F3000 ; Glyph: 0
G1 X106.9235 Y120.3832 E0.09427 F3000 ; Glyph: 0
G1 X104.9235 Y120.3832 E0.09427 F3000 ; Glyph: 0
G1 X102.9235 Y120.3832 E0.09427 F3000 ; Glyph: 0
G1 X102.9235 Y118.3832 E0.09427 F3000 ; Glyph: 0
G1 E-2.5 F3300 ; Retract
G1 Z0.5 F6000 ; Z hop
G0 X106.9235 Y121.3832 F6000 ; Move
G1 Z0.3 F6000 ; Z hop return
G1 E2.5 F3300 ; Un-retract
G1 X106.1735 Y121.3832 E0.03535 F3000 ; Glyph: .
G1 E-2.5 F3300 ; Retract
G1 Z0.5 F6000 ; Z hop
G0 X102.9235 Y122.3832 F6000 ; Move
G1 Z0.3 F6000 ; Z hop return
G1 E2.5 F3300 ; Un-retract
G1 X104.9235 Y122.3832 E0.09427 F3000 ; Glyph: 8
G1 X106.9235 Y122.3832 E0.09427 F3000 ; Glyph: 8
G1 X106.9235 Y124.3832 E0.09427 F3000 ; Glyph: 8
G1 X104.9235 Y124.3832 E0.09427 F3000 ; Glyph: 8
G1 X102.9235 Y124.3832 E0.09427 F3000 ; Glyph: 8
G1 X102.9235 Y122.3832 E0.09427 F3000 ; Glyph: 8
G0 X104.9235 Y122.3832 F6000 ; Move
G1 X104.9235 Y124.3832 E0.09427 F3000 ; Glyph: 8
G1 E-2.5 F3300 ; Retract
G1 Z0.5 F6000 ; Z hop
G0 X110.0049 Y118.3832 F6000 ; Move
G1 Z0.3 F6000 ; Z hop return
G1 E2.5 F3300 ; Un-retract
G1 X112.0049 Y118.3832 E0.09427 F3000 ; Glyph: 0
G1 X114.0049 Y118.3832 E0.09427 F3000 ; Glyph: 0
G1 X114.0049 Y120.3832 E0.09427 F3000 ; Glyph: 0
G1 X112.0049 Y120.3832 E0.09427 F3000 ; Glyph: 0
G1 X110.0049 Y120.3832 E0.09427 F3000 ; Glyph: 0
G1 X110.0049 Y118.3832 E0.09427 F3000 ; Glyph: 0
G1 E-2.5 F3300 ; Retract
G1 Z0.5 F6000 ; Z hop
G0 X114.0049 Y121.3832 F6000 ; Move
G1 Z0.3 F6000 ; Z hop return
G1 E2.5 F3300 ; Un-retract
G1 X113.2549 Y121.3832 E0.03535 F3000 ; Glyph: .
G0 X114.0049 Y122.3832 F6000 ; Move
G1 X114.0049 Y124.3832 E0.09427 F3000 ; Glyph: 9
G1 X112.0049 Y124.3832 E0.09427 F3000 ; Glyph: 9
G1 X110.0049 Y124.3832 E0.09427 F3000 ; Glyph: 9
G1 X110.0049 Y122.3832 E0.09427 F3000 ; Glyph: 9
G1 X112.0049 Y122.3832 E0.09427 F3000 ; Glyph: 9
G1 X112.0049 Y124.3832 E0.09427 F3000 ; Glyph: 9
G1 E-2.5 F3300 ; Retract
G1 Z0.5 F6000 ; Z hop
G0 X68.9712 Y74.5068 F6000 ; Move to pattern start

G1 Z0.3 F6000 ; Z hop return
G1 E2.5 F3300 ; Un-retract
M900 K0.3 ; Set linear advance k factor
M117 LA 0.3
G1 X90.1844 Y95.72 E1.41404 F3000 ; Print pattern wall
G1 X68.9712 Y116.9332 E1.41404 F3000 ; Print pattern wall
G1 E-2.5 F3300 ; Retract
G1 Z0.5 F6000 ; Z hop
G0 X69.5165 Y74.5068 F6000 ; Move to start next pattern wall
G1 Z0.3 F6000 ; Z hop return
G1 E2.5 F3300 ; Un-retract
G1 X90.7297 Y95.72 E1.41404 F3000 ; Print pattern wall
G1 X69.5165 Y116.9332 E1.41404 F3000 ; Print pattern wall
G1 E-2.5 F3300 ; Retract
G1 Z0.5 F6000 ; Z hop
G0 X70.0619 Y74.5068 F6000 ; Move to start next pattern wall
G1 Z0.3 F6000 ; Z hop return
G1 E2.5 F3300 ; Un-retract
G1 X91.2751 Y95.72 E1.41404 F3000 ; Print pattern wall
G1 X70.0619 Y116.9332 E1.41404 F3000 ; Print pattern wall
G1 E-2.5 F3300 ; Retract
G1 Z0.5 F6000 ; Z hop
G0 X72.5119 Y74.5068 F6000 ; Move to next pattern
G1 Z0.3 F6000 ; Z hop return
G1 E2.5 F3300 ; Un-retract
M900 K0.35 ; Set linear advance k factor
M117 LA 0.35
G1 X93.7251 Y95.72 E1.41404 F3000 ; Print pattern wall
G1 X72.5119 Y116.9332 E1.41404 F3000 ; Print pattern wall
G1 E-2.5 F3300 ; Retract
G1 Z0.5 F6000 ; Z hop
G0 X73.0572 Y74.5068 F6000 ; Move to start next pattern wall
G1 Z0.3 F6000 ; Z hop return
G1 E2.5 F3300 ; Un-retract
G1 X94.2704 Y95.72 E1.41404 F3000 ; Print pattern wall
G1 X73.0572 Y116.9332 E1.41404 F3000 ; Print pattern wall
G1 E-2.5 F3300 ; Retract
G1 Z0.5 F6000 ; Z hop
G0 X73.6026 Y74.5068 F6000 ; Move to start next pattern wall
G1 Z0.3 F6000 ; Z hop return
G1 E2.5 F3300 ; Un-retract
G1 X94.8158 Y95.72 E1.41404 F3000 ; Print pattern wall
G1 X73.6026 Y116.9332 E1.41404 F3000 ; Print pattern wall
G1 E-2.5 F3300 ; Retract
G1 Z0.5 F6000 ; Z hop
G0 X76.0526 Y74.5068 F6000 ; Move to next pattern
G1 Z0.3 F6000 ; Z hop return
G1 E2.5 F3300 ; Un-retract
M900 K0.4 ; Set linear advance k factor
M117 LA 0.4
G1 X97.2658 Y95.72 E1.41404 F3000 ; Print pattern wall
G1 X76.0526 Y116.9332 E1.41404 F3000 ; Print pattern wall
G1 E-2.5 F3300 ; Retract
G1 Z0.5 F6000 ; Z hop
G0 X76.5979 Y74.5068 F6000 ; Move to start next pattern wall
G1 Z0.3 F6000 ; Z hop return
G1 E2.5 F3300 ; Un-retract
G1 X97.8111 Y95.72 E1.41404 F3000 ; Print pattern wall
G1 X76.5979 Y116.9332 E1.41404 F3000 ; Print pattern wall
G1 E-2.5 F3300 ; Retract
G1 Z0.5 F6000 ; Z hop
G0 X77.1433 Y74.5068 F6000 ; Move to start next pattern wall
G1 Z0.3 F6000 ; Z hop return
G1 E2.5 F3300 ; Un-retract
G1 X98.3565 Y95.72 E1.41404 F3000 ; Print pattern wall
G1 X77.1433 Y116.9332 E1.41404 F3000 ; Print pattern wall
G1 E-2.5 F3300 ; Retract
G1 Z0.5 F6000 ; Z hop
G0 X79.5933 Y74.5068 F6000 ; Move to next pattern
G1 Z0.3 F6000 ; Z hop return
G1 E2.5 F3300 ; Un-retract
M900 K0.45 ; Set linear advance k factor
M117 LA 0.45
G1 X100.8065 Y95.72 E1.41404 F3000 ; Print pattern wall
G1 X79.5933 Y116.9332 E1.41404 F3000 ; Print pattern wall
G1 E-2.5 F3300 ; Retract
G1 Z0.5 F6000 ; Z hop
G0 X80.1386 Y74.5068 F6000 ; Move to start next pattern wall
G1 Z0.3 F6000 ; Z hop return
G1 E2.5 F3300 ; Un-retract
G1 X101.3518 Y95.72 E1.41404 F3000 ; Print pattern wall
G1 X80.1386 Y116.9332 E1.41404 F3000 ; Print pattern wall
G1 E-2.5 F3300 ; Retract
G1 Z0.5 F6000 ; Z hop
G0 X80.684 Y74.5068 F6000 ; Move to start next pattern wall
G1 Z0.3 F6000 ; Z hop return
G1 E2.5 F3300 ; Un-retract
G1 X101.8972 Y95.72 E1.41404 F3000 ; Print pattern wall
G1 X80.684 Y116.9332 E1.41404 F3000 ; Print pattern wall
G1 E-2.5 F3300 ; Retract
G1 Z0.5 F6000 ; Z hop
G0 X83.134 Y74.5068 F6000 ; Move to next pattern
G1 Z0.3 F6000 ; Z hop return
G1 E2.5 F3300 ; Un-retract
M900 K0.5 ; Set linear advance k factor
M117 LA 0.5
G1 X104.3472 Y95.72 E1.41404 F3000 ; Print pattern wall
G1 X83.134 Y116.9332 E1.41404 F3000 ; Print pattern wall
G1 E-2.5 F3300 ; Retract
G1 Z0.5 F6000 ; Z hop
G0 X83.6793 Y74.5068 F6000 ; Move to start next pattern wall
G1 Z0.3 F6000 ; Z hop return
G1 E2.5 F3300 ; Un-retract
G1 X104.8925 Y95.72 E1.41404 F3000 ; Print pattern wall
G1 X83.6793 Y116.9332 E1.41404 F3000 ; Print pattern wall
G1 E-2.5 F3300 ; Retract
G1 Z0.5 F6000 ; Z hop
G0 X84.2247 Y74.5068 F6000 ; Move to start next pattern wall
G1 Z0.3 F6000 ; Z hop return
G1 E2.5 F3300 ; Un-retract
G1 X105.4379 Y95.72 E1.41404 F3000 ; Print pattern wall
G1 X84.2247 Y116.9332 E1.41404 F3000 ; Print pattern wall
G1 E-2.5 F3300 ; Retract
G1 Z0.5 F6000 ; Z hop
G0 X86.6747 Y74.5068 F6000 ; Move to next pattern
G1 Z0.3 F6000 ; Z hop return
G1 E2.5 F3300 ; Un-retract
M900 K0.55 ; Set linear advance k factor
M117 LA 0.55
G1 X107.8879 Y95.72 E1.41404 F3000 ; Print pattern wall
G1 X86.6747 Y116.9332 E1.41404 F3000 ; Print pattern wall
G1 E-2.5 F3300 ; Retract
G1 Z0.5 F6000 ; Z hop
G0 X87.22 Y74.5068 F6000 ; Move to start next pattern wall
G1 Z0.3 F6000 ; Z hop return
G1 E2.5 F3300 ; Un-retract
G1 X108.4332 Y95.72 E1.41404 F3000 ; Print pattern wall
G1 X87.22 Y116.9332 E1.41404 F3000 ; Print pattern wall
G1 E-2.5 F3300 ; Retract
G1 Z0.5 F6000 ; Z hop
G0 X87.7654 Y74.5068 F6000 ; Move to start next pattern wall
G1 Z0.3 F6000 ; Z hop return
G1 E2.5 F3300 ; Un-retract
G1 X108.9786 Y95.72 E1.41404 F3000 ; Print pattern wall
G1 X87.7654 Y116.9332 E1.41404 F3000 ; Print pattern wall
G1 E-2.5 F3300 ; Retract
G1 Z0.5 F6000 ; Z hop
G0 X90.2154 Y74.5068 F6000 ; Move to next pattern
G1 Z0.3 F6000 ; Z hop return
G1 E2.5 F3300 ; Un-retract
M900 K0.6 ; Set linear advance k factor
M117 LA 0.6
G1 X111.4286 Y95.72 E1.41404 F3000 ; Print pattern wall
G1 X90.2154 Y116.9332 E1.41404 F3000 ; Print pattern wall
G1 E-2.5 F3300 ; Retract
G1 Z0.5 F6000 ; Z hop
G0 X90.7607 Y74.5068 F6000 ; Move to start next pattern wall
G1 Z0.3 F6000 ; Z hop return
G1 E2.5 F3300 ; Un-retract
G1 X111.9739 Y95.72 E1.41404 F3000 ; Print pattern wall
G1 X90.7607 Y116.9332 E1.41404 F3000 ; Print pattern wall
G1 E-2.5 F3300 ; Retract
G1 Z0.5 F6000 ; Z hop
G0 X91.3061 Y74.5068 F6000 ; Move to start next pattern wall
G1 Z0.3 F6000 ; Z hop return
G1 E2.5 F3300 ; Un-retract
G1 X112.5193 Y95.72 E1.41404 F3000 ; Print pattern wall
G1 X91.3061 Y116.9332 E1.41404 F3000 ; Print pattern wall
G1 E-2.5 F3300 ; Retract
G1 Z0.5 F6000 ; Z hop
G0 X93.7561 Y74.5068 F6000 ; Move to next pattern
G1 Z0.3 F6000 ; Z hop return
G1 E2.5 F3300 ; Un-retract
M900 K0.65 ; Set linear advance k factor
M117 LA 0.65
G1 X114.9693 Y95.72 E1.41404 F3000 ; Print pattern wall
G1 X93.7561 Y116.9332 E1.41404 F3000 ; Print pattern wall
G1 E-2.5 F3300 ; Retract
G1 Z0.5 F6000 ; Z hop
G0 X94.3014 Y74.5068 F6000 ; Move to start next pattern wall
G1 Z0.3 F6000 ; Z hop return
G1 E2.5 F3300 ; Un-retract
G1 X115.5146 Y95.72 E1.41404 F3000 ; Print pattern wall
G1 X94.3014 Y116.9332 E1.41404 F3000 ; Print pattern wall
G1 E-2.5 F3300 ; Retract
G1 Z0.5 F6000 ; Z hop
G0 X94.8467 Y74.5068 F6000 ; Move to start next pattern wall
G1 Z0.3 F6000 ; Z hop return
G1 E2.5 F3300 ; Un-retract
G1 X116.06 Y95.72 E1.41404 F3000 ; Print pattern wall
G1 X94.8467 Y116.9332 E1.41404 F3000 ; Print pattern wall
G1 E-2.5 F3300 ; Retract
G1 Z0.5 F6000 ; Z hop
G0 X97.2967 Y74.5068 F6000 ; Move to next pattern
G1 Z0.3 F6000 ; Z hop return
G1 E2.5 F3300 ; Un-retract
M900 K0.7 ; Set linear advance k factor
M117 LA 0.7
G1 X118.51 Y95.72 E1.41404 F3000 ; Print pattern wall
G1 X97.2967 Y116.9332 E1.41404 F3000 ; Print pattern wall
G1 E-2.5 F3300 ; Retract
G1 Z0.5 F6000 ; Z hop
G0 X97.8421 Y74.5068 F6000 ; Move to start next pattern wall
G1 Z0.3 F6000 ; Z hop return
G1 E2.5 F3300 ; Un-retract
G1 X119.0553 Y95.72 E1.41404 F3000 ; Print pattern wall
G1 X97.8421 Y116.9332 E1.41404 F3000 ; Print pattern wall
G1 E-2.5 F3300 ; Retract
G1 Z0.5 F6000 ; Z hop
G0 X98.3874 Y74.5068 F6000 ; Move to start next pattern wall
G1 Z0.3 F6000 ; Z hop return
G1 E2.5 F3300 ; Un-retract
G1 X119.6006 Y95.72 E1.41404 F3000 ; Print pattern wall
G1 X98.3874 Y116.9332 E1.41404 F3000 ; Print pattern wall
G1 E-2.5 F3300 ; Retract
G1 Z0.5 F6000 ; Z hop
G0 X100.8374 Y74.5068 F6000 ; Move to next pattern
G1 Z0.3 F6000 ; Z hop return
G1 E2.5 F3300 ; Un-retract
M900 K0.75 ; Set linear advance k factor
M117 LA 0.75
G1 X122.0506 Y95.72 E1.41404 F3000 ; Print pattern wall
G1 X100.8374 Y116.9332 E1.41404 F3000 ; Print pattern wall
G1 E-2.5 F3300 ; Retract
G1 Z0.5 F6000 ; Z hop
G0 X101.3828 Y74.5068 F6000 ; Move to start next pattern wall
G1 Z0.3 F6000 ; Z hop return
G1 E2.5 F3300 ; Un-retract
G1 X122.596 Y95.72 E1.41404 F3000 ; Print pattern wall
G1 X101.3828 Y116.9332 E1.41404 F3000 ; Print pattern wall
G1 E-2.5 F3300 ; Retract
G1 Z0.5 F6000 ; Z hop
G0 X101.9281 Y74.5068 F6000 ; Move to start next pattern wall
G1 Z0.3 F6000 ; Z hop return
G1 E2.5 F3300 ; Un-retract
G1 X123.1413 Y95.72 E1.41404 F3000 ; Print pattern wall
G1 X101.9281 Y116.9332 E1.41404 F3000 ; Print pattern wall
G1 E-2.5 F3300 ; Retract
G1 Z0.5 F6000 ; Z hop
G0 X104.3781 Y74.5068 F6000 ; Move to next pattern
G1 Z0.3 F6000 ; Z hop return
G1 E2.5 F3300 ; Un-retract
M900 K0.8 ; Set linear advance k factor
M117 LA 0.8
G1 X125.5913 Y95.72 E1.41404 F3000 ; Print pattern wall
G1 X104.3781 Y116.9332 E1.41404 F3000 ; Print pattern wall
G1 E-2.5 F3300 ; Retract
G1 Z0.5 F6000 ; Z hop
G0 X104.9235 Y74.5068 F6000 ; Move to start next pattern wall
G1 Z0.3 F6000 ; Z hop return
G1 E2.5 F3300 ; Un-retract
G1 X126.1367 Y95.72 E1.41404 F3000 ; Print pattern wall
G1 X104.9235 Y116.9332 E1.41404 F3000 ; Print pattern wall
G1 E-2.5 F3300 ; Retract
G1 Z0.5 F6000 ; Z hop
G0 X105.4688 Y74.5068 F6000 ; Move to start next pattern wall
G1 Z0.3 F6000 ; Z hop return
G1 E2.5 F3300 ; Un-retract
G1 X126.682 Y95.72 E1.41404 F3000 ; Print pattern wall
G1 X105.4688 Y116.9332 E1.41404 F3000 ; Print pattern wall
G1 E-2.5 F3300 ; Retract
G1 Z0.5 F6000 ; Z hop
G0 X107.9188 Y74.5068 F6000 ; Move to next pattern
G1 Z0.3 F6000 ; Z hop return
G1 E2.5 F3300 ; Un-retract
M900 K0.85 ; Set linear advance k factor
M117 LA 0.85
G1 X129.132 Y95.72 E1.41404 F3000 ; Print pattern wall
G1 X107.9188 Y116.9332 E1.41404 F3000 ; Print pattern wall
G1 E-2.5 F3300 ; Retract
G1 Z0.5 F6000 ; Z hop
G0 X108.4642 Y74.5068 F6000 ; Move to start next pattern wall
G1 Z0.3 F6000 ; Z hop return
G1 E2.5 F3300 ; Un-retract
G1 X129.6774 Y95.72 E1.41404 F3000 ; Print pattern wall
G1 X108.4642 Y116.9332 E1.41404 F3000 ; Print pattern wall
G1 E-2.5 F3300 ; Retract
G1 Z0.5 F6000 ; Z hop
G0 X109.0095 Y74.5068 F6000 ; Move to start next pattern wall
G1 Z0.3 F6000 ; Z hop return
G1 E2.5 F3300 ; Un-retract
G1 X130.2227 Y95.72 E1.41404 F3000 ; Print pattern wall
G1 X109.0095 Y116.9332 E1.41404 F3000 ; Print pattern wall
G1 E-2.5 F3300 ; Retract
G1 Z0.5 F6000 ; Z hop
G0 X111.4595 Y74.5068 F6000 ; Move to next pattern
G1 Z0.3 F6000 ; Z hop return
G1 E2.5 F3300 ; Un-retract
M900 K0.9 ; Set linear advance k factor
M117 LA 0.9
G1 X132.6727 Y95.72 E1.41404 F3000 ; Print pattern wall
G1 X111.4595 Y116.9332 E1.41404 F3000 ; Print pattern wall
G1 E-2.5 F3300 ; Retract
G1 Z0.5 F6000 ; Z hop
G0 X112.0049 Y74.5068 F6000 ; Move to start next pattern wall
G1 Z0.3 F6000 ; Z hop return
G1 E2.5 F3300 ; Un-retract
G1 X133.2181 Y95.72 E1.41404 F3000 ; Print pattern wall
G1 X112.0049 Y116.9332 E1.41404 F3000 ; Print pattern wall
G1 E-2.5 F3300 ; Retract
G1 Z0.5 F6000 ; Z hop
G0 X112.5502 Y74.5068 F6000 ; Move to start next pattern wall
G1 Z0.3 F6000 ; Z hop return
G1 E2.5 F3300 ; Un-retract
G1 X133.7634 Y95.72 E1.41404 F3000 ; Print pattern wall
G1 X112.5502 Y116.9332 E1.41404 F3000 ; Print pattern wall
G1 E-2.5 F3300 ; Retract
G1 Z0.5 F6000 ; Z hop
G0 X68.9712 Y74.5068 F6000 ; Move back to start position
G1 Z0.3 F6000 ; Z hop return
G1 E2.5 F3300 ; Un-retract
M106 S255 ; Set fan speed
G0 Z0.6 F6000 ; Move to layer height
M900 K0.3 ; Set linear advance k factor
M117 LA 0.3
G1 X90.1844 Y95.72 E1.41404 F6000 ; Print pattern wall
G1 X68.9712 Y116.9332 E1.41404 F6000 ; Print pattern wall
G1 E-2.5 F3300 ; Retract
G1 Z0.8 F6000 ; Z hop
G0 X69.5165 Y74.5068 F6000 ; Move to start next pattern wall
G1 Z0.6 F6000 ; Z hop return
G1 E2.5 F3300 ; Un-retract
G1 X90.7297 Y95.72 E1.41404 F6000 ; Print pattern wall
G1 X69.5165 Y116.9332 E1.41404 F6000 ; Print pattern wall
G1 E-2.5 F3300 ; Retract
G1 Z0.8 F6000 ; Z hop
G0 X70.0619 Y74.5068 F6000 ; Move to start next pattern wall
G1 Z0.6 F6000 ; Z hop return
G1 E2.5 F3300 ; Un-retract
G1 X91.2751 Y95.72 E1.41404 F6000 ; Print pattern wall
G1 X70.0619 Y116.9332 E1.41404 F6000 ; Print pattern wall
G1 E-2.5 F3300 ; Retract
G1 Z0.8 F6000 ; Z hop
G0 X72.5119 Y74.5068 F6000 ; Move to next pattern
G1 Z0.6 F6000 ; Z hop return
G1 E2.5 F3300 ; Un-retract
M900 K0.35 ; Set linear advance k factor
M117 LA 0.35
G1 X93.7251 Y95.72 E1.41404 F6000 ; Print pattern wall
G1 X72.5119 Y116.9332 E1.41404 F6000 ; Print pattern wall
G1 E-2.5 F3300 ; Retract
G1 Z0.8 F6000 ; Z hop
G0 X73.0572 Y74.5068 F6000 ; Move to start next pattern wall
G1 Z0.6 F6000 ; Z hop return
G1 E2.5 F3300 ; Un-retract
G1 X94.2704 Y95.72 E1.41404 F6000 ; Print pattern wall
G1 X73.0572 Y116.9332 E1.41404 F6000 ; Print pattern wall
G1 E-2.5 F3300 ; Retract
G1 Z0.8 F6000 ; Z hop
G0 X73.6026 Y74.5068 F6000 ; Move to start next pattern wall
G1 Z0.6 F6000 ; Z hop return
G1 E2.5 F3300 ; Un-retract
G1 X94.8158 Y95.72 E1.41404 F6000 ; Print pattern wall
G1 X73.6026 Y116.9332 E1.41404 F6000 ; Print pattern wall
G1 E-2.5 F3300 ; Retract
G1 Z0.8 F6000 ; Z hop
G0 X76.0526 Y74.5068 F6000 ; Move to next pattern
G1 Z0.6 F6000 ; Z hop return
G1 E2.5 F3300 ; Un-retract
M900 K0.4 ; Set linear advance k factor
M117 LA 0.4
G1 X97.2658 Y95.72 E1.41404 F6000 ; Print pattern wall
G1 X76.0526 Y116.9332 E1.41404 F6000 ; Print pattern wall
G1 E-2.5 F3300 ; Retract
G1 Z0.8 F6000 ; Z hop
G0 X76.5979 Y74.5068 F6000 ; Move to start next pattern wall
G1 Z0.6 F6000 ; Z hop return
G1 E2.5 F3300 ; Un-retract
G1 X97.8111 Y95.72 E1.41404 F6000 ; Print pattern wall
G1 X76.5979 Y116.9332 E1.41404 F6000 ; Print pattern wall
G1 E-2.5 F3300 ; Retract
G1 Z0.8 F6000 ; Z hop
G0 X77.1433 Y74.5068 F6000 ; Move to start next pattern wall
G1 Z0.6 F6000 ; Z hop return
G1 E2.5 F3300 ; Un-retract
G1 X98.3565 Y95.72 E1.41404 F6000 ; Print pattern wall
G1 X77.1433 Y116.9332 E1.41404 F6000 ; Print pattern wall
G1 E-2.5 F3300 ; Retract
G1 Z0.8 F6000 ; Z hop
G0 X79.5933 Y74.5068 F6000 ; Move to next pattern
G1 Z0.6 F6000 ; Z hop return
G1 E2.5 F3300 ; Un-retract
M900 K0.45 ; Set linear advance k factor
M117 LA 0.45
G1 X100.8065 Y95.72 E1.41404 F6000 ; Print pattern wall
G1 X79.5933 Y116.9332 E1.41404 F6000 ; Print pattern wall
G1 E-2.5 F3300 ; Retract
G1 Z0.8 F6000 ; Z hop
G0 X80.1386 Y74.5068 F6000 ; Move to start next pattern wall
G1 Z0.6 F6000 ; Z hop return
G1 E2.5 F3300 ; Un-retract
G1 X101.3518 Y95.72 E1.41404 F6000 ; Print pattern wall
G1 X80.1386 Y116.9332 E1.41404 F6000 ; Print pattern wall
G1 E-2.5 F3300 ; Retract
G1 Z0.8 F6000 ; Z hop
G0 X80.684 Y74.5068 F6000 ; Move to start next pattern wall
G1 Z0.6 F6000 ; Z hop return
G1 E2.5 F3300 ; Un-retract
G1 X101.8972 Y95.72 E1.41404 F6000 ; Print pattern wall
G1 X80.684 Y116.9332 E1.41404 F6000 ; Print pattern wall
G1 E-2.5 F3300 ; Retract
G1 Z0.8 F6000 ; Z hop
G0 X83.134 Y74.5068 F6000 ; Move to next pattern
G1 Z0.6 F6000 ; Z hop return
G1 E2.5 F3300 ; Un-retract
M900 K0.5 ; Set linear advance k factor
M117 LA 0.5
G1 X104.3472 Y95.72 E1.41404 F6000 ; Print pattern wall
G1 X83.134 Y116.9332 E1.41404 F6000 ; Print pattern wall
G1 E-2.5 F3300 ; Retract
G1 Z0.8 F6000 ; Z hop
G0 X83.6793 Y74.5068 F6000 ; Move to start next pattern wall
G1 Z0.6 F6000 ; Z hop return
G1 E2.5 F3300 ; Un-retract
G1 X104.8925 Y95.72 E1.41404 F6000 ; Print pattern wall
G1 X83.6793 Y116.9332 E1.41404 F6000 ; Print pattern wall
G1 E-2.5 F3300 ; Retract
G1 Z0.8 F6000 ; Z hop
G0 X84.2247 Y74.5068 F6000 ; Move to start next pattern wall
G1 Z0.6 F6000 ; Z hop return
G1 E2.5 F3300 ; Un-retract
G1 X105.4379 Y95.72 E1.41404 F6000 ; Print pattern wall
G1 X84.2247 Y116.9332 E1.41404 F6000 ; Print pattern wall
G1 E-2.5 F3300 ; Retract
G1 Z0.8 F6000 ; Z hop
G0 X86.6747 Y74.5068 F6000 ; Move to next pattern
G1 Z0.6 F6000 ; Z hop return
G1 E2.5 F3300 ; Un-retract
M900 K0.55 ; Set linear advance k factor
M117 LA 0.55
G1 X107.8879 Y95.72 E1.41404 F6000 ; Print pattern wall
G1 X86.6747 Y116.9332 E1.41404 F6000 ; Print pattern wall
G1 E-2.5 F3300 ; Retract
G1 Z0.8 F6000 ; Z hop
G0 X87.22 Y74.5068 F6000 ; Move to start next pattern wall
G1 Z0.6 F6000 ; Z hop return
G1 E2.5 F3300 ; Un-retract
G1 X108.4332 Y95.72 E1.41404 F6000 ; Print pattern wall
G1 X87.22 Y116.9332 E1.41404 F6000 ; Print pattern wall
G1 E-2.5 F3300 ; Retract
G1 Z0.8 F6000 ; Z hop
G0 X87.7654 Y74.5068 F6000 ; Move to start next pattern wall
G1 Z0.6 F6000 ; Z hop return
G1 E2.5 F3300 ; Un-retract
G1 X108.9786 Y95.72 E1.41404 F6000 ; Print pattern wall
G1 X87.7654 Y116.9332 E1.41404 F6000 ; Print pattern wall
G1 E-2.5 F3300 ; Retract
G1 Z0.8 F6000 ; Z hop
G0 X90.2154 Y74.5068 F6000 ; Move to next pattern
G1 Z0.6 F6000 ; Z hop return
G1 E2.5 F3300 ; Un-retract
M900 K0.6 ; Set linear advance k factor
M117 LA 0.6
G1 X111.4286 Y95.72 E1.41404 F6000 ; Print pattern wall
G1 X90.2154 Y116.9332 E1.41404 F6000 ; Print pattern wall
G1 E-2.5 F3300 ; Retract
G1 Z0.8 F6000 ; Z hop
G0 X90.7607 Y74.5068 F6000 ; Move to start next pattern wall
G1 Z0.6 F6000 ; Z hop return
G1 E2.5 F3300 ; Un-retract
G1 X111.9739 Y95.72 E1.41404 F6000 ; Print pattern wall
G1 X90.7607 Y116.9332 E1.41404 F6000 ; Print pattern wall
G1 E-2.5 F3300 ; Retract
G1 Z0.8 F6000 ; Z hop
G0 X91.3061 Y74.5068 F6000 ; Move to start next pattern wall
G1 Z0.6 F6000 ; Z hop return
G1 E2.5 F3300 ; Un-retract
G1 X112.5193 Y95.72 E1.41404 F6000 ; Print pattern wall
G1 X91.3061 Y116.9332 E1.41404 F6000 ; Print pattern wall
G1 E-2.5 F3300 ; Retract
G1 Z0.8 F6000 ; Z hop
G0 X93.7561 Y74.5068 F6000 ; Move to next pattern
G1 Z0.6 F6000 ; Z hop return
G1 E2.5 F3300 ; Un-retract
M900 K0.65 ; Set linear advance k factor
M117 LA 0.65
G1 X114.9693 Y95.72 E1.41404 F6000 ; Print pattern wall
G1 X93.7561 Y116.9332 E1.41404 F6000 ; Print pattern wall
G1 E-2.5 F3300 ; Retract
G1 Z0.8 F6000 ; Z hop
G0 X94.3014 Y74.5068 F6000 ; Move to start next pattern wall
G1 Z0.6 F6000 ; Z hop return
G1 E2.5 F3300 ; Un-retract
G1 X115.5146 Y95.72 E1.41404 F6000 ; Print pattern wall
G1 X94.3014 Y116.9332 E1.41404 F6000 ; Print pattern wall
G1 E-2.5 F3300 ; Retract
G1 Z0.8 F6000 ; Z hop
G0 X94.8467 Y74.5068 F6000 ; Move to start next pattern wall
G1 Z0.6 F6000 ; Z hop return
G1 E2.5 F3300 ; Un-retract
G1 X116.06 Y95.72 E1.41404 F6000 ; Print pattern wall
G1 X94.8467 Y116.9332 E1.41404 F6000 ; Print pattern wall
G1 E-2.5 F3300 ; Retract
G1 Z0.8 F6000 ; Z hop
G0 X97.2967 Y74.5068 F6000 ; Move to next pattern
G1 Z0.6 F6000 ; Z hop return
G1 E2.5 F3300 ; Un-retract
M900 K0.7 ; Set linear advance k factor
M117 LA 0.7
G1 X118.51 Y95.72 E1.41404 F6000 ; Print pattern wall
G1 X97.2967 Y116.9332 E1.41404 F6000 ; Print pattern wall
G1 E-2.5 F3300 ; Retract
G1 Z0.8 F6000 ; Z hop
G0 X97.8421 Y74.5068 F6000 ; Move to start next pattern wall
G1 Z0.6 F6000 ; Z hop return
G1 E2.5 F3300 ; Un-retract
G1 X119.0553 Y95.72 E1.41404 F6000 ; Print pattern wall
G1 X97.8421 Y116.9332 E1.41404 F6000 ; Print pattern wall
G1 E-2.5 F3300 ; Retract
G1 Z0.8 F6000 ; Z hop
G0 X98.3874 Y74.5068 F6000 ; Move to start next pattern wall
G1 Z0.6 F6000 ; Z hop return
G1 E2.5 F3300 ; Un-retract
G1 X119.6006 Y95.72 E1.41404 F6000 ; Print pattern wall
G1 X98.3874 Y116.9332 E1.41404 F6000 ; Print pattern wall
G1 E-2.5 F3300 ; Retract
G1 Z0.8 F6000 ; Z hop
G0 X100.8374 Y74.5068 F6000 ; Move to next pattern
G1 Z0.6 F6000 ; Z hop return
G1 E2.5 F3300 ; Un-retract
M900 K0.75 ; Set linear advance k factor
M117 LA 0.75
G1 X122.0506 Y95.72 E1.41404 F6000 ; Print pattern wall
G1 X100.8374 Y116.9332 E1.41404 F6000 ; Print pattern wall
G1 E-2.5 F3300 ; Retract
G1 Z0.8 F6000 ; Z hop
G0 X101.3828 Y74.5068 F6000 ; Move to start next pattern wall
G1 Z0.6 F6000 ; Z hop return
G1 E2.5 F3300 ; Un-retract
G1 X122.596 Y95.72 E1.41404 F6000 ; Print pattern wall
G1 X101.3828 Y116.9332 E1.41404 F6000 ; Print pattern wall
G1 E-2.5 F3300 ; Retract
G1 Z0.8 F6000 ; Z hop
G0 X101.9281 Y74.5068 F6000 ; Move to start next pattern wall
G1 Z0.6 F6000 ; Z hop return
G1 E2.5 F3300 ; Un-retract
G1 X123.1413 Y95.72 E1.41404 F6000 ; Print pattern wall
G1 X101.9281 Y116.9332 E1.41404 F6000 ; Print pattern wall
G1 E-2.5 F3300 ; Retract
G1 Z0.8 F6000 ; Z hop
G0 X104.3781 Y74.5068 F6000 ; Move to next pattern
G1 Z0.6 F6000 ; Z hop return
G1 E2.5 F3300 ; Un-retract
M900 K0.8 ; Set linear advance k factor
M117 LA 0.8
G1 X125.5913 Y95.72 E1.41404 F6000 ; Print pattern wall
G1 X104.3781 Y116.9332 E1.41404 F6000 ; Print pattern wall
G1 E-2.5 F3300 ; Retract
G1 Z0.8 F6000 ; Z hop
G0 X104.9235 Y74.5068 F6000 ; Move to start next pattern wall
G1 Z0.6 F6000 ; Z hop return
G1 E2.5 F3300 ; Un-retract
G1 X126.1367 Y95.72 E1.41404 F6000 ; Print pattern wall
G1 X104.9235 Y116.9332 E1.41404 F6000 ; Print pattern wall
G1 E-2.5 F3300 ; Retract
G1 Z0.8 F6000 ; Z hop
G0 X105.4688 Y74.5068 F6000 ; Move to start next pattern wall
G1 Z0.6 F6000 ; Z hop return
G1 E2.5 F3300 ; Un-retract
G1 X126.682 Y95.72 E1.41404 F6000 ; Print pattern wall
G1 X105.4688 Y116.9332 E1.41404 F6000 ; Print pattern wall
G1 E-2.5 F3300 ; Retract
G1 Z0.8 F6000 ; Z hop
G0 X107.9188 Y74.5068 F6000 ; Move to next pattern
G1 Z0.6 F6000 ; Z hop return
G1 E2.5 F3300 ; Un-retract
M900 K0.85 ; Set linear advance k factor
M117 LA 0.85
G1 X129.132 Y95.72 E1.41404 F6000 ; Print pattern wall
G1 X107.9188 Y116.9332 E1.41404 F6000 ; Print pattern wall
G1 E-2.5 F3300 ; Retract
G1 Z0.8 F6000 ; Z hop
G0 X108.4642 Y74.5068 F6000 ; Move to start next pattern wall
G1 Z0.6 F6000 ; Z hop return
G1 E2.5 F3300 ; Un-retract
G1 X129.6774 Y95.72 E1.41404 F6000 ; Print pattern wall
G1 X108.4642 Y116.9332 E1.41404 F6000 ; Print pattern wall
G1 E-2.5 F3300 ; Retract
G1 Z0.8 F6000 ; Z hop
G0 X109.0095 Y74.5068 F6000 ; Move to start next pattern wall
G1 Z0.6 F6000 ; Z hop return
G1 E2.5 F3300 ; Un-retract
G1 X130.2227 Y95.72 E1.41404 F6000 ; Print pattern wall
G1 X109.0095 Y116.9332 E1.41404 F6000 ; Print pattern wall
G1 E-2.5 F3300 ; Retract
G1 Z0.8 F6000 ; Z hop
G0 X111.4595 Y74.5068 F6000 ; Move to next pattern
G1 Z0.6 F6000 ; Z hop return
G1 E2.5 F3300 ; Un-retract
M900 K0.9 ; Set linear advance k factor
M117 LA 0.9
G1 X132.6727 Y95.72 E1.41404 F6000 ; Print pattern wall
G1 X111.4595 Y116.9332 E1.41404 F6000 ; Print pattern wall
G1 E-2.5 F3300 ; Retract
G1 Z0.8 F6000 ; Z hop
G0 X112.0049 Y74.5068 F6000 ; Move to start next pattern wall
G1 Z0.6 F6000 ; Z hop return
G1 E2.5 F3300 ; Un-retract
G1 X133.2181 Y95.72 E1.41404 F6000 ; Print pattern wall
G1 X112.0049 Y116.9332 E1.41404 F6000 ; Print pattern wall
G1 E-2.5 F3300 ; Retract
G1 Z0.8 F6000 ; Z hop
G0 X112.5502 Y74.5068 F6000 ; Move to start next pattern wall
G1 Z0.6 F6000 ; Z hop return
G1 E2.5 F3300 ; Un-retract
G1 X133.7634 Y95.72 E1.41404 F6000 ; Print pattern wall
G1 X112.5502 Y116.9332 E1.41404 F6000 ; Print pattern wall
G1 E-2.5 F3300 ; Retract
G1 Z0.8 F6000 ; Z hop
G0 X68.9712 Y74.5068 F6000 ; Move back to start position
G1 Z0.6 F6000 ; Z hop return
G1 E2.5 F3300 ; Un-retract
G0 Z0.9 F6000 ; Move to layer height
M900 K0.3 ; Set linear advance k factor
M117 LA 0.3
G1 X90.1844 Y95.72 E1.41404 F6000 ; Print pattern wall
G1 X68.9712 Y116.9332 E1.41404 F6000 ; Print pattern wall
G1 E-2.5 F3300 ; Retract
G1 Z1.1 F6000 ; Z hop
G0 X69.5165 Y74.5068 F6000 ; Move to start next pattern wall
G1 Z0.9 F6000 ; Z hop return
G1 E2.5 F3300 ; Un-retract
G1 X90.7297 Y95.72 E1.41404 F6000 ; Print pattern wall
G1 X69.5165 Y116.9332 E1.41404 F6000 ; Print pattern wall
G1 E-2.5 F3300 ; Retract
G1 Z1.1 F6000 ; Z hop
G0 X70.0619 Y74.5068 F6000 ; Move to start next pattern wall
G1 Z0.9 F6000 ; Z hop return
G1 E2.5 F3300 ; Un-retract
G1 X91.2751 Y95.72 E1.41404 F6000 ; Print pattern wall
G1 X70.0619 Y116.9332 E1.41404 F6000 ; Print pattern wall
G1 E-2.5 F3300 ; Retract
G1 Z1.1 F6000 ; Z hop
G0 X72.5119 Y74.5068 F6000 ; Move to next pattern
G1 Z0.9 F6000 ; Z hop return
G1 E2.5 F3300 ; Un-retract
M900 K0.35 ; Set linear advance k factor
M117 LA 0.35
G1 X93.7251 Y95.72 E1.41404 F6000 ; Print pattern wall
G1 X72.5119 Y116.9332 E1.41404 F6000 ; Print pattern wall
G1 E-2.5 F3300 ; Retract
G1 Z1.1 F6000 ; Z hop
G0 X73.0572 Y74.5068 F6000 ; Move to start next pattern wall
G1 Z0.9 F6000 ; Z hop return
G1 E2.5 F3300 ; Un-retract
G1 X94.2704 Y95.72 E1.41404 F6000 ; Print pattern wall
G1 X73.0572 Y116.9332 E1.41404 F6000 ; Print pattern wall
G1 E-2.5 F3300 ; Retract
G1 Z1.1 F6000 ; Z hop
G0 X73.6026 Y74.5068 F6000 ; Move to start next pattern wall
G1 Z0.9 F6000 ; Z hop return
G1 E2.5 F3300 ; Un-retract
G1 X94.8158 Y95.72 E1.41404 F6000 ; Print pattern wall
G1 X73.6026 Y116.9332 E1.41404 F6000 ; Print pattern wall
G1 E-2.5 F3300 ; Retract
G1 Z1.1 F6000 ; Z hop
G0 X76.0526 Y74.5068 F6000 ; Move to next pattern
G1 Z0.9 F6000 ; Z hop return
G1 E2.5 F3300 ; Un-retract
M900 K0.4 ; Set linear advance k factor
M117 LA 0.4
G1 X97.2658 Y95.72 E1.41404 F6000 ; Print pattern wall
G1 X76.0526 Y116.9332 E1.41404 F6000 ; Print pattern wall
G1 E-2.5 F3300 ; Retract
G1 Z1.1 F6000 ; Z hop
G0 X76.5979 Y74.5068 F6000 ; Move to start next pattern wall
G1 Z0.9 F6000 ; Z hop return
G1 E2.5 F3300 ; Un-retract
G1 X97.8111 Y95.72 E1.41404 F6000 ; Print pattern wall
G1 X76.5979 Y116.9332 E1.41404 F6000 ; Print pattern wall
G1 E-2.5 F3300 ; Retract
G1 Z1.1 F6000 ; Z hop
G0 X77.1433 Y74.5068 F6000 ; Move to start next pattern wall
G1 Z0.9 F6000 ; Z hop return
G1 E2.5 F3300 ; Un-retract
G1 X98.3565 Y95.72 E1.41404 F6000 ; Print pattern wall
G1 X77.1433 Y116.9332 E1.41404 F6000 ; Print pattern wall
G1 E-2.5 F3300 ; Retract
G1 Z1.1 F6000 ; Z hop
G0 X79.5933 Y74.5068 F6000 ; Move to next pattern
G1 Z0.9 F6000 ; Z hop return
G1 E2.5 F3300 ; Un-retract
M900 K0.45 ; Set linear advance k factor
M117 LA 0.45
G1 X100.8065 Y95.72 E1.41404 F6000 ; Print pattern wall
G1 X79.5933 Y116.9332 E1.41404 F6000 ; Print pattern wall
G1 E-2.5 F3300 ; Retract
G1 Z1.1 F6000 ; Z hop
G0 X80.1386 Y74.5068 F6000 ; Move to start next pattern wall
G1 Z0.9 F6000 ; Z hop return
G1 E2.5 F3300 ; Un-retract
G1 X101.3518 Y95.72 E1.41404 F6000 ; Print pattern wall
G1 X80.1386 Y116.9332 E1.41404 F6000 ; Print pattern wall
G1 E-2.5 F3300 ; Retract
G1 Z1.1 F6000 ; Z hop
G0 X80.684 Y74.5068 F6000 ; Move to start next pattern wall
G1 Z0.9 F6000 ; Z hop return
G1 E2.5 F3300 ; Un-retract
G1 X101.8972 Y95.72 E1.41404 F6000 ; Print pattern wall
G1 X80.684 Y116.9332 E1.41404 F6000 ; Print pattern wall
G1 E-2.5 F3300 ; Retract
G1 Z1.1 F6000 ; Z hop
G0 X83.134 Y74.5068 F6000 ; Move to next pattern
G1 Z0.9 F6000 ; Z hop return
G1 E2.5 F3300 ; Un-retract
M900 K0.5 ; Set linear advance k factor
M117 LA 0.5
G1 X104.3472 Y95.72 E1.41404 F6000 ; Print pattern wall
G1 X83.134 Y116.9332 E1.41404 F6000 ; Print pattern wall
G1 E-2.5 F3300 ; Retract
G1 Z1.1 F6000 ; Z hop
G0 X83.6793 Y74.5068 F6000 ; Move to start next pattern wall
G1 Z0.9 F6000 ; Z hop return
G1 E2.5 F3300 ; Un-retract
G1 X104.8925 Y95.72 E1.41404 F6000 ; Print pattern wall
G1 X83.6793 Y116.9332 E1.41404 F6000 ; Print pattern wall
G1 E-2.5 F3300 ; Retract
G1 Z1.1 F6000 ; Z hop
G0 X84.2247 Y74.5068 F6000 ; Move to start next pattern wall
G1 Z0.9 F6000 ; Z hop return
G1 E2.5 F3300 ; Un-retract
G1 X105.4379 Y95.72 E1.41404 F6000 ; Print pattern wall
G1 X84.2247 Y116.9332 E1.41404 F6000 ; Print pattern wall
G1 E-2.5 F3300 ; Retract
G1 Z1.1 F6000 ; Z hop
G0 X86.6747 Y74.5068 F6000 ; Move to next pattern
G1 Z0.9 F6000 ; Z hop return
G1 E2.5 F3300 ; Un-retract
M900 K0.55 ; Set linear advance k factor
M117 LA 0.55
G1 X107.8879 Y95.72 E1.41404 F6000 ; Print pattern wall
G1 X86.6747 Y116.9332 E1.41404 F6000 ; Print pattern wall
G1 E-2.5 F3300 ; Retract
G1 Z1.1 F6000 ; Z hop
G0 X87.22 Y74.5068 F6000 ; Move to start next pattern wall
G1 Z0.9 F6000 ; Z hop return
G1 E2.5 F3300 ; Un-retract
G1 X108.4332 Y95.72 E1.41404 F6000 ; Print pattern wall
G1 X87.22 Y116.9332 E1.41404 F6000 ; Print pattern wall
G1 E-2.5 F3300 ; Retract
G1 Z1.1 F6000 ; Z hop
G0 X87.7654 Y74.5068 F6000 ; Move to start next pattern wall
G1 Z0.9 F6000 ; Z hop return
G1 E2.5 F3300 ; Un-retract
G1 X108.9786 Y95.72 E1.41404 F6000 ; Print pattern wall
G1 X87.7654 Y116.9332 E1.41404 F6000 ; Print pattern wall
G1 E-2.5 F3300 ; Retract
G1 Z1.1 F6000 ; Z hop
G0 X90.2154 Y74.5068 F6000 ; Move to next pattern
G1 Z0.9 F6000 ; Z hop return
G1 E2.5 F3300 ; Un-retract
M900 K0.6 ; Set linear advance k factor
M117 LA 0.6
G1 X111.4286 Y95.72 E1.41404 F6000 ; Print pattern wall
G1 X90.2154 Y116.9332 E1.41404 F6000 ; Print pattern wall
G1 E-2.5 F3300 ; Retract
G1 Z1.1 F6000 ; Z hop
G0 X90.7607 Y74.5068 F6000 ; Move to start next pattern wall
G1 Z0.9 F6000 ; Z hop return
G1 E2.5 F3300 ; Un-retract
G1 X111.9739 Y95.72 E1.41404 F6000 ; Print pattern wall
G1 X90.7607 Y116.9332 E1.41404 F6000 ; Print pattern wall
G1 E-2.5 F3300 ; Retract
G1 Z1.1 F6000 ; Z hop
G0 X91.3061 Y74.5068 F6000 ; Move to start next pattern wall
G1 Z0.9 F6000 ; Z hop return
G1 E2.5 F3300 ; Un-retract
G1 X112.5193 Y95.72 E1.41404 F6000 ; Print pattern wall
G1 X91.3061 Y116.9332 E1.41404 F6000 ; Print pattern wall
G1 E-2.5 F3300 ; Retract
G1 Z1.1 F6000 ; Z hop
G0 X93.7561 Y74.5068 F6000 ; Move to next pattern
G1 Z0.9 F6000 ; Z hop return
G1 E2.5 F3300 ; Un-retract
M900 K0.65 ; Set linear advance k factor
M117 LA 0.65
G1 X114.9693 Y95.72 E1.41404 F6000 ; Print pattern wall
G1 X93.7561 Y116.9332 E1.41404 F6000 ; Print pattern wall
G1 E-2.5 F3300 ; Retract
G1 Z1.1 F6000 ; Z hop
G0 X94.3014 Y74.5068 F6000 ; Move to start next pattern wall
G1 Z0.9 F6000 ; Z hop return
G1 E2.5 F3300 ; Un-retract
G1 X115.5146 Y95.72 E1.41404 F6000 ; Print pattern wall
G1 X94.3014 Y116.9332 E1.41404 F6000 ; Print pattern wall
G1 E-2.5 F3300 ; Retract
G1 Z1.1 F6000 ; Z hop
G0 X94.8467 Y74.5068 F6000 ; Move to start next pattern wall
G1 Z0.9 F6000 ; Z hop return
G1 E2.5 F3300 ; Un-retract
G1 X116.06 Y95.72 E1.41404 F6000 ; Print pattern wall
G1 X94.8467 Y116.9332 E1.41404 F6000 ; Print pattern wall
G1 E-2.5 F3300 ; Retract
G1 Z1.1 F6000 ; Z hop
G0 X97.2967 Y74.5068 F6000 ; Move to next pattern
G1 Z0.9 F6000 ; Z hop return
G1 E2.5 F3300 ; Un-retract
M900 K0.7 ; Set linear advance k factor
M117 LA 0.7
G1 X118.51 Y95.72 E1.41404 F6000 ; Print pattern wall
G1 X97.2967 Y116.9332 E1.41404 F6000 ; Print pattern wall
G1 E-2.5 F3300 ; Retract
G1 Z1.1 F6000 ; Z hop
G0 X97.8421 Y74.5068 F6000 ; Move to start next pattern wall
G1 Z0.9 F6000 ; Z hop return
G1 E2.5 F3300 ; Un-retract
G1 X119.0553 Y95.72 E1.41404 F6000 ; Print pattern wall
G1 X97.8421 Y116.9332 E1.41404 F6000 ; Print pattern wall
G1 E-2.5 F3300 ; Retract
G1 Z1.1 F6000 ; Z hop
G0 X98.3874 Y74.5068 F6000 ; Move to start next pattern wall
G1 Z0.9 F6000 ; Z hop return
G1 E2.5 F3300 ; Un-retract
G1 X119.6006 Y95.72 E1.41404 F6000 ; Print pattern wall
G1 X98.3874 Y116.9332 E1.41404 F6000 ; Print pattern wall
G1 E-2.5 F3300 ; Retract
G1 Z1.1 F6000 ; Z hop
G0 X100.8374 Y74.5068 F6000 ; Move to next pattern
G1 Z0.9 F6000 ; Z hop return
G1 E2.5 F3300 ; Un-retract
M900 K0.75 ; Set linear advance k factor
M117 LA 0.75
G1 X122.0506 Y95.72 E1.41404 F6000 ; Print pattern wall
G1 X100.8374 Y116.9332 E1.41404 F6000 ; Print pattern wall
G1 E-2.5 F3300 ; Retract
G1 Z1.1 F6000 ; Z hop
G0 X101.3828 Y74.5068 F6000 ; Move to start next pattern wall
G1 Z0.9 F6000 ; Z hop return
G1 E2.5 F3300 ; Un-retract
G1 X122.596 Y95.72 E1.41404 F6000 ; Print pattern wall
G1 X101.3828 Y116.9332 E1.41404 F6000 ; Print pattern wall
G1 E-2.5 F3300 ; Retract
G1 Z1.1 F6000 ; Z hop
G0 X101.9281 Y74.5068 F6000 ; Move to start next pattern wall
G1 Z0.9 F6000 ; Z hop return
G1 E2.5 F3300 ; Un-retract
G1 X123.1413 Y95.72 E1.41404 F6000 ; Print pattern wall
G1 X101.9281 Y116.9332 E1.41404 F6000 ; Print pattern wall
G1 E-2.5 F3300 ; Retract
G1 Z1.1 F6000 ; Z hop
G0 X104.3781 Y74.5068 F6000 ; Move to next pattern
G1 Z0.9 F6000 ; Z hop return
G1 E2.5 F3300 ; Un-retract
M900 K0.8 ; Set linear advance k factor
M117 LA 0.8
G1 X125.5913 Y95.72 E1.41404 F6000 ; Print pattern wall
G1 X104.3781 Y116.9332 E1.41404 F6000 ; Print pattern wall
G1 E-2.5 F3300 ; Retract
G1 Z1.1 F6000 ; Z hop
G0 X104.9235 Y74.5068 F6000 ; Move to start next pattern wall
G1 Z0.9 F6000 ; Z hop return
G1 E2.5 F3300 ; Un-retract
G1 X126.1367 Y95.72 E1.41404 F6000 ; Print pattern wall
G1 X104.9235 Y116.9332 E1.41404 F6000 ; Print pattern wall
G1 E-2.5 F3300 ; Retract
G1 Z1.1 F6000 ; Z hop
G0 X105.4688 Y74.5068 F6000 ; Move to start next pattern wall
G1 Z0.9 F6000 ; Z hop return
G1 E2.5 F3300 ; Un-retract
G1 X126.682 Y95.72 E1.41404 F6000 ; Print pattern wall
G1 X105.4688 Y116.9332 E1.41404 F6000 ; Print pattern wall
G1 E-2.5 F3300 ; Retract
G1 Z1.1 F6000 ; Z hop
G0 X107.9188 Y74.5068 F6000 ; Move to next pattern
G1 Z0.9 F6000 ; Z hop return
G1 E2.5 F3300 ; Un-retract
M900 K0.85 ; Set linear advance k factor
M117 LA 0.85
G1 X129.132 Y95.72 E1.41404 F6000 ; Print pattern wall
G1 X107.9188 Y116.9332 E1.41404 F6000 ; Print pattern wall
G1 E-2.5 F3300 ; Retract
G1 Z1.1 F6000 ; Z hop
G0 X108.4642 Y74.5068 F6000 ; Move to start next pattern wall
G1 Z0.9 F6000 ; Z hop return
G1 E2.5 F3300 ; Un-retract
G1 X129.6774 Y95.72 E1.41404 F6000 ; Print pattern wall
G1 X108.4642 Y116.9332 E1.41404 F6000 ; Print pattern wall
G1 E-2.5 F3300 ; Retract
G1 Z1.1 F6000 ; Z hop
G0 X109.0095 Y74.5068 F6000 ; Move to start next pattern wall
G1 Z0.9 F6000 ; Z hop return
G1 E2.5 F3300 ; Un-retract
G1 X130.2227 Y95.72 E1.41404 F6000 ; Print pattern wall
G1 X109.0095 Y116.9332 E1.41404 F6000 ; Print pattern wall
G1 E-2.5 F3300 ; Retract
G1 Z1.1 F6000 ; Z hop
G0 X111.4595 Y74.5068 F6000 ; Move to next pattern
G1 Z0.9 F6000 ; Z hop return
G1 E2.5 F3300 ; Un-retract
M900 K0.9 ; Set linear advance k factor
M117 LA 0.9
G1 X132.6727 Y95.72 E1.41404 F6000 ; Print pattern wall
G1 X111.4595 Y116.9332 E1.41404 F6000 ; Print pattern wall
G1 E-2.5 F3300 ; Retract
G1 Z1.1 F6000 ; Z hop
G0 X112.0049 Y74.5068 F6000 ; Move to start next pattern wall
G1 Z0.9 F6000 ; Z hop return
G1 E2.5 F3300 ; Un-retract
G1 X133.2181 Y95.72 E1.41404 F6000 ; Print pattern wall
G1 X112.0049 Y116.9332 E1.41404 F6000 ; Print pattern wall
G1 E-2.5 F3300 ; Retract
G1 Z1.1 F6000 ; Z hop
G0 X112.5502 Y74.5068 F6000 ; Move to start next pattern wall
G1 Z0.9 F6000 ; Z hop return
G1 E2.5 F3300 ; Un-retract
G1 X133.7634 Y95.72 E1.41404 F6000 ; Print pattern wall
G1 X112.5502 Y116.9332 E1.41404 F6000 ; Print pattern wall
G1 E-2.5 F3300 ; Retract
G1 Z1.1 F6000 ; Z hop
G0 X68.9712 Y74.5068 F6000 ; Move back to start position
G1 Z0.9 F6000 ; Z hop return
G1 E2.5 F3300 ; Un-retract
G0 Z1.2 F6000 ; Move to layer height
M900 K0.3 ; Set linear advance k factor
M117 LA 0.3
G1 X90.1844 Y95.72 E1.41404 F6000 ; Print pattern wall
G1 X68.9712 Y116.9332 E1.41404 F6000 ; Print pattern wall
G1 E-2.5 F3300 ; Retract
G1 Z1.4 F6000 ; Z hop
G0 X69.5165 Y74.5068 F6000 ; Move to start next pattern wall
G1 Z1.2 F6000 ; Z hop return
G1 E2.5 F3300 ; Un-retract
G1 X90.7297 Y95.72 E1.41404 F6000 ; Print pattern wall
G1 X69.5165 Y116.9332 E1.41404 F6000 ; Print pattern wall
G1 E-2.5 F3300 ; Retract
G1 Z1.4 F6000 ; Z hop
G0 X70.0619 Y74.5068 F6000 ; Move to start next pattern wall
G1 Z1.2 F6000 ; Z hop return
G1 E2.5 F3300 ; Un-retract
G1 X91.2751 Y95.72 E1.41404 F6000 ; Print pattern wall
G1 X70.0619 Y116.9332 E1.41404 F6000 ; Print pattern wall
G1 E-2.5 F3300 ; Retract
G1 Z1.4 F6000 ; Z hop
G0 X72.5119 Y74.5068 F6000 ; Move to next pattern
G1 Z1.2 F6000 ; Z hop return
G1 E2.5 F3300 ; Un-retract
M900 K0.35 ; Set linear advance k factor
M117 LA 0.35
G1 X93.7251 Y95.72 E1.41404 F6000 ; Print pattern wall
G1 X72.5119 Y116.9332 E1.41404 F6000 ; Print pattern wall
G1 E-2.5 F3300 ; Retract
G1 Z1.4 F6000 ; Z hop
G0 X73.0572 Y74.5068 F6000 ; Move to start next pattern wall
G1 Z1.2 F6000 ; Z hop return
G1 E2.5 F3300 ; Un-retract
G1 X94.2704 Y95.72 E1.41404 F6000 ; Print pattern wall
G1 X73.0572 Y116.9332 E1.41404 F6000 ; Print pattern wall
G1 E-2.5 F3300 ; Retract
G1 Z1.4 F6000 ; Z hop
G0 X73.6026 Y74.5068 F6000 ; Move to start next pattern wall
G1 Z1.2 F6000 ; Z hop return
G1 E2.5 F3300 ; Un-retract
G1 X94.8158 Y95.72 E1.41404 F6000 ; Print pattern wall
G1 X73.6026 Y116.9332 E1.41404 F6000 ; Print pattern wall
G1 E-2.5 F3300 ; Retract
G1 Z1.4 F6000 ; Z hop
G0 X76.0526 Y74.5068 F6000 ; Move to next pattern
G1 Z1.2 F6000 ; Z hop return
G1 E2.5 F3300 ; Un-retract
M900 K0.4 ; Set linear advance k factor
M117 LA 0.4
G1 X97.2658 Y95.72 E1.41404 F6000 ; Print pattern wall
G1 X76.0526 Y116.9332 E1.41404 F6000 ; Print pattern wall
G1 E-2.5 F3300 ; Retract
G1 Z1.4 F6000 ; Z hop
G0 X76.5979 Y74.5068 F6000 ; Move to start next pattern wall
G1 Z1.2 F6000 ; Z hop return
G1 E2.5 F3300 ; Un-retract
G1 X97.8111 Y95.72 E1.41404 F6000 ; Print pattern wall
G1 X76.5979 Y116.9332 E1.41404 F6000 ; Print pattern wall
G1 E-2.5 F3300 ; Retract
G1 Z1.4 F6000 ; Z hop
G0 X77.1433 Y74.5068 F6000 ; Move to start next pattern wall
G1 Z1.2 F6000 ; Z hop return
G1 E2.5 F3300 ; Un-retract
G1 X98.3565 Y95.72 E1.41404 F6000 ; Print pattern wall
G1 X77.1433 Y116.9332 E1.41404 F6000 ; Print pattern wall
G1 E-2.5 F3300 ; Retract
G1 Z1.4 F6000 ; Z hop
G0 X79.5933 Y74.5068 F6000 ; Move to next pattern
G1 Z1.2 F6000 ; Z hop return
G1 E2.5 F3300 ; Un-retract
M900 K0.45 ; Set linear advance k factor
M117 LA 0.45
G1 X100.8065 Y95.72 E1.41404 F6000 ; Print pattern wall
G1 X79.5933 Y116.9332 E1.41404 F6000 ; Print pattern wall
G1 E-2.5 F3300 ; Retract
G1 Z1.4 F6000 ; Z hop
G0 X80.1386 Y74.5068 F6000 ; Move to start next pattern wall
G1 Z1.2 F6000 ; Z hop return
G1 E2.5 F3300 ; Un-retract
G1 X101.3518 Y95.72 E1.41404 F6000 ; Print pattern wall
G1 X80.1386 Y116.9332 E1.41404 F6000 ; Print pattern wall
G1 E-2.5 F3300 ; Retract
G1 Z1.4 F6000 ; Z hop
G0 X80.684 Y74.5068 F6000 ; Move to start next pattern wall
G1 Z1.2 F6000 ; Z hop return
G1 E2.5 F3300 ; Un-retract
G1 X101.8972 Y95.72 E1.41404 F6000 ; Print pattern wall
G1 X80.684 Y116.9332 E1.41404 F6000 ; Print pattern wall
G1 E-2.5 F3300 ; Retract
G1 Z1.4 F6000 ; Z hop
G0 X83.134 Y74.5068 F6000 ; Move to next pattern
G1 Z1.2 F6000 ; Z hop return
G1 E2.5 F3300 ; Un-retract
M900 K0.5 ; Set linear advance k factor
M117 LA 0.5
G1 X104.3472 Y95.72 E1.41404 F6000 ; Print pattern wall
G1 X83.134 Y116.9332 E1.41404 F6000 ; Print pattern wall
G1 E-2.5 F3300 ; Retract
G1 Z1.4 F6000 ; Z hop
G0 X83.6793 Y74.5068 F6000 ; Move to start next pattern wall
G1 Z1.2 F6000 ; Z hop return
G1 E2.5 F3300 ; Un-retract
G1 X104.8925 Y95.72 E1.41404 F6000 ; Print pattern wall
G1 X83.6793 Y116.9332 E1.41404 F6000 ; Print pattern wall
G1 E-2.5 F3300 ; Retract
G1 Z1.4 F6000 ; Z hop
G0 X84.2247 Y74.5068 F6000 ; Move to start next pattern wall
G1 Z1.2 F6000 ; Z hop return
G1 E2.5 F3300 ; Un-retract
G1 X105.4379 Y95.72 E1.41404 F6000 ; Print pattern wall
G1 X84.2247 Y116.9332 E1.41404 F6000 ; Print pattern wall
G1 E-2.5 F3300 ; Retract
G1 Z1.4 F6000 ; Z hop
G0 X86.6747 Y74.5068 F6000 ; Move to next pattern
G1 Z1.2 F6000 ; Z hop return
G1 E2.5 F3300 ; Un-retract
M900 K0.55 ; Set linear advance k factor
M117 LA 0.55
G1 X107.8879 Y95.72 E1.41404 F6000 ; Print pattern wall
G1 X86.6747 Y116.9332 E1.41404 F6000 ; Print pattern wall
G1 E-2.5 F3300 ; Retract
G1 Z1.4 F6000 ; Z hop
G0 X87.22 Y74.5068 F6000 ; Move to start next pattern wall
G1 Z1.2 F6000 ; Z hop return
G1 E2.5 F3300 ; Un-retract
G1 X108.4332 Y95.72 E1.41404 F6000 ; Print pattern wall
G1 X87.22 Y116.9332 E1.41404 F6000 ; Print pattern wall
G1 E-2.5 F3300 ; Retract
G1 Z1.4 F6000 ; Z hop
G0 X87.7654 Y74.5068 F6000 ; Move to start next pattern wall
G1 Z1.2 F6000 ; Z hop return
G1 E2.5 F3300 ; Un-retract
G1 X108.9786 Y95.72 E1.41404 F6000 ; Print pattern wall
G1 X87.7654 Y116.9332 E1.41404 F6000 ; Print pattern wall
G1 E-2.5 F3300 ; Retract
G1 Z1.4 F6000 ; Z hop
G0 X90.2154 Y74.5068 F6000 ; Move to next pattern
G1 Z1.2 F6000 ; Z hop return
G1 E2.5 F3300 ; Un-retract
M900 K0.6 ; Set linear advance k factor
M117 LA 0.6
G1 X111.4286 Y95.72 E1.41404 F6000 ; Print pattern wall
G1 X90.2154 Y116.9332 E1.41404 F6000 ; Print pattern wall
G1 E-2.5 F3300 ; Retract
G1 Z1.4 F6000 ; Z hop
G0 X90.7607 Y74.5068 F6000 ; Move to start next pattern wall
G1 Z1.2 F6000 ; Z hop return
G1 E2.5 F3300 ; Un-retract
G1 X111.9739 Y95.72 E1.41404 F6000 ; Print pattern wall
G1 X90.7607 Y116.9332 E1.41404 F6000 ; Print pattern wall
G1 E-2.5 F3300 ; Retract
G1 Z1.4 F6000 ; Z hop
G0 X91.3061 Y74.5068 F6000 ; Move to start next pattern wall
G1 Z1.2 F6000 ; Z hop return
G1 E2.5 F3300 ; Un-retract
G1 X112.5193 Y95.72 E1.41404 F6000 ; Print pattern wall
G1 X91.3061 Y116.9332 E1.41404 F6000 ; Print pattern wall
G1 E-2.5 F3300 ; Retract
G1 Z1.4 F6000 ; Z hop
G0 X93.7561 Y74.5068 F6000 ; Move to next pattern
G1 Z1.2 F6000 ; Z hop return
G1 E2.5 F3300 ; Un-retract
M900 K0.65 ; Set linear advance k factor
M117 LA 0.65
G1 X114.9693 Y95.72 E1.41404 F6000 ; Print pattern wall
G1 X93.7561 Y116.9332 E1.41404 F6000 ; Print pattern wall
G1 E-2.5 F3300 ; Retract
G1 Z1.4 F6000 ; Z hop
G0 X94.3014 Y74.5068 F6000 ; Move to start next pattern wall
G1 Z1.2 F6000 ; Z hop return
G1 E2.5 F3300 ; Un-retract
G1 X115.5146 Y95.72 E1.41404 F6000 ; Print pattern wall
G1 X94.3014 Y116.9332 E1.41404 F6000 ; Print pattern wall
G1 E-2.5 F3300 ; Retract
G1 Z1.4 F6000 ; Z hop
G0 X94.8467 Y74.5068 F6000 ; Move to start next pattern wall
G1 Z1.2 F6000 ; Z hop return
G1 E2.5 F3300 ; Un-retract
G1 X116.06 Y95.72 E1.41404 F6000 ; Print pattern wall
G1 X94.8467 Y116.9332 E1.41404 F6000 ; Print pattern wall
G1 E-2.5 F3300 ; Retract
G1 Z1.4 F6000 ; Z hop
G0 X97.2967 Y74.5068 F6000 ; Move to next pattern
G1 Z1.2 F6000 ; Z hop return
G1 E2.5 F3300 ; Un-retract
M900 K0.7 ; Set linear advance k factor
M117 LA 0.7
G1 X118.51 Y95.72 E1.41404 F6000 ; Print pattern wall
G1 X97.2967 Y116.9332 E1.41404 F6000 ; Print pattern wall
G1 E-2.5 F3300 ; Retract
G1 Z1.4 F6000 ; Z hop
G0 X97.8421 Y74.5068 F6000 ; Move to start next pattern wall
G1 Z1.2 F6000 ; Z hop return
G1 E2.5 F3300 ; Un-retract
G1 X119.0553 Y95.72 E1.41404 F6000 ; Print pattern wall
G1 X97.8421 Y116.9332 E1.41404 F6000 ; Print pattern wall
G1 E-2.5 F3300 ; Retract
G1 Z1.4 F6000 ; Z hop
G0 X98.3874 Y74.5068 F6000 ; Move to start next pattern wall
G1 Z1.2 F6000 ; Z hop return
G1 E2.5 F3300 ; Un-retract
G1 X119.6006 Y95.72 E1.41404 F6000 ; Print pattern wall
G1 X98.3874 Y116.9332 E1.41404 F6000 ; Print pattern wall
G1 E-2.5 F3300 ; Retract
G1 Z1.4 F6000 ; Z hop
G0 X100.8374 Y74.5068 F6000 ; Move to next pattern
G1 Z1.2 F6000 ; Z hop return
G1 E2.5 F3300 ; Un-retract
M900 K0.75 ; Set linear advance k factor
M117 LA 0.75
G1 X122.0506 Y95.72 E1.41404 F6000 ; Print pattern wall
G1 X100.8374 Y116.9332 E1.41404 F6000 ; Print pattern wall
G1 E-2.5 F3300 ; Retract
G1 Z1.4 F6000 ; Z hop
G0 X101.3828 Y74.5068 F6000 ; Move to start next pattern wall
G1 Z1.2 F6000 ; Z hop return
G1 E2.5 F3300 ; Un-retract
G1 X122.596 Y95.72 E1.41404 F6000 ; Print pattern wall
G1 X101.3828 Y116.9332 E1.41404 F6000 ; Print pattern wall
G1 E-2.5 F3300 ; Retract
G1 Z1.4 F6000 ; Z hop
G0 X101.9281 Y74.5068 F6000 ; Move to start next pattern wall
G1 Z1.2 F6000 ; Z hop return
G1 E2.5 F3300 ; Un-retract
G1 X123.1413 Y95.72 E1.41404 F6000 ; Print pattern wall
G1 X101.9281 Y116.9332 E1.41404 F6000 ; Print pattern wall
G1 E-2.5 F3300 ; Retract
G1 Z1.4 F6000 ; Z hop
G0 X104.3781 Y74.5068 F6000 ; Move to next pattern
G1 Z1.2 F6000 ; Z hop return
G1 E2.5 F3300 ; Un-retract
M900 K0.8 ; Set linear advance k factor
M117 LA 0.8
G1 X125.5913 Y95.72 E1.41404 F6000 ; Print pattern wall
G1 X104.3781 Y116.9332 E1.41404 F6000 ; Print pattern wall
G1 E-2.5 F3300 ; Retract
G1 Z1.4 F6000 ; Z hop
G0 X104.9235 Y74.5068 F6000 ; Move to start next pattern wall
G1 Z1.2 F6000 ; Z hop return
G1 E2.5 F3300 ; Un-retract
G1 X126.1367 Y95.72 E1.41404 F6000 ; Print pattern wall
G1 X104.9235 Y116.9332 E1.41404 F6000 ; Print pattern wall
G1 E-2.5 F3300 ; Retract
G1 Z1.4 F6000 ; Z hop
G0 X105.4688 Y74.5068 F6000 ; Move to start next pattern wall
G1 Z1.2 F6000 ; Z hop return
G1 E2.5 F3300 ; Un-retract
G1 X126.682 Y95.72 E1.41404 F6000 ; Print pattern wall
G1 X105.4688 Y116.9332 E1.41404 F6000 ; Print pattern wall
G1 E-2.5 F3300 ; Retract
G1 Z1.4 F6000 ; Z hop
G0 X107.9188 Y74.5068 F6000 ; Move to next pattern
G1 Z1.2 F6000 ; Z hop return
G1 E2.5 F3300 ; Un-retract
M900 K0.85 ; Set linear advance k factor
M117 LA 0.85
G1 X129.132 Y95.72 E1.41404 F6000 ; Print pattern wall
G1 X107.9188 Y116.9332 E1.41404 F6000 ; Print pattern wall
G1 E-2.5 F3300 ; Retract
G1 Z1.4 F6000 ; Z hop
G0 X108.4642 Y74.5068 F6000 ; Move to start next pattern wall
G1 Z1.2 F6000 ; Z hop return
G1 E2.5 F3300 ; Un-retract
G1 X129.6774 Y95.72 E1.41404 F6000 ; Print pattern wall
G1 X108.4642 Y116.9332 E1.41404 F6000 ; Print pattern wall
G1 E-2.5 F3300 ; Retract
G1 Z1.4 F6000 ; Z hop
G0 X109.0095 Y74.5068 F6000 ; Move to start next pattern wall
G1 Z1.2 F6000 ; Z hop return
G1 E2.5 F3300 ; Un-retract
G1 X130.2227 Y95.72 E1.41404 F6000 ; Print pattern wall
G1 X109.0095 Y116.9332 E1.41404 F6000 ; Print pattern wall
G1 E-2.5 F3300 ; Retract
G1 Z1.4 F6000 ; Z hop
G0 X111.4595 Y74.5068 F6000 ; Move to next pattern
G1 Z1.2 F6000 ; Z hop return
G1 E2.5 F3300 ; Un-retract
M900 K0.9 ; Set linear advance k factor
M117 LA 0.9
G1 X132.6727 Y95.72 E1.41404 F6000 ; Print pattern wall
G1 X111.4595 Y116.9332 E1.41404 F6000 ; Print pattern wall
G1 E-2.5 F3300 ; Retract
G1 Z1.4 F6000 ; Z hop
G0 X112.0049 Y74.5068 F6000 ; Move to start next pattern wall
G1 Z1.2 F6000 ; Z hop return
G1 E2.5 F3300 ; Un-retract
G1 X133.2181 Y95.72 E1.41404 F6000 ; Print pattern wall
G1 X112.0049 Y116.9332 E1.41404 F6000 ; Print pattern wall
G1 E-2.5 F3300 ; Retract
G1 Z1.4 F6000 ; Z hop
G0 X112.5502 Y74.5068 F6000 ; Move to start next pattern wall
G1 Z1.2 F6000 ; Z hop return
G1 E2.5 F3300 ; Un-retract
G1 X133.7634 Y95.72 E1.41404 F6000 ; Print pattern wall
G1 X112.5502 Y116.9332 E1.41404 F6000 ; Print pattern wall
M900 K0.3 ; Set linear advance k factor back to start value
M117 LA 0.3
G1 E-2.5 F3300 ; Retract
G1 Z1.4 F6000 ; Z hop
G0 Z6.2 F6000 ; Z raise
M104 S0 ; Turn off hotend
M140 S0 ; Turn off bed
M107    ; Turn off fan
;
; End G-code
;
M501 ; Load settings from EEPROM (to restore previous values)
;
; FINISH
;
