@echo off
:: Create the 'images' folder for storing images
mkdir images

:: Create image files (empty for now) for each component
echo Creating image files...
echo. > images/18650_battery.jpg
echo. > images/pcb_protoboard.jpg
echo. > images/pin_headers.jpg
echo. > images/nodemcu_esp32.jpg
echo. > images/gps_module.jpg
echo. > images/ups_module.jpg
echo. > images/usb_cable.jpg
echo. > images/freebies.jpg
echo. > images/3d_casing.jpg
echo. > images/pcb_assembly.jpg
echo. > images/battery_setup.jpg
echo. > images/casing_assembly.jpg
echo. > images/programming.jpg

:: Create 'Freebies' folder for Arduino sample codes
mkdir Freebies

:: Create sample Arduino code files (empty for now)
echo Creating sample Arduino files...
echo. > Freebies/GPS_Tracker_Sample1.ino
echo. > Freebies/GPS_Tracker_Sample2.ino

:: Notify the user
echo Project folder structure and files created successfully!

pause
