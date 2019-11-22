#! /bin/bash

deps:


#Format is
# 1 = bus
# 2 = address
# 3 = command
# n = data
# s = Write mode (s = SMBus block data)

commands

MODE = 0x30 can have the follow data 
    'off':0x10,
    'static':0x11,
    'breathing':0x12,
    'strobe':0x13,
    'cycling':0x14,
    'random':0x15,
    'wave':0x17,
    'spring':0x18,
    'stack':0x19,
    'cram':0x1a,
    'scan':0x1b,
    'neon':0x1c,
    'water':0x1d,
    'rainbow':0x1e


'off' takes no parameters.

'static' = 0x11 takes three bytes.
     'red' = 00 to FF
     'green' = 00 to FF
     'blue' = 00 to FF

'breathing' = 0x12 takes four bytes.
     'red' = 00 to FF
     'green' = 00 to FF
     'blue' = 00 to FF
     'time' = 00 to FF

'strobe' = 0x13 takes four bytes.
     'red' = 00 to FF
     'green' = 00 to FF
     'blue' = 00 to FF
     'time' = 00 to FF

'cycling' = 0x14 takes one byte.
     'time' = 00 to FF

'random' = 0x15 takes four bytes.
     'red' = 00 to FF
     'green' = 00 to FF
     'blue' = 00 to FF
     'time' = 00 to FF
     
'wave' = 0x17 takes three bytes.
     'red' = 00 to FF
     'green' = 00 to FF
     'blue' = 00 to FF

'spring' = 0x18 takes four bytes.
     'red' = 00 to FF
     'green' = 00 to FF
     'blue' = 00 to FF
     'time' = 00 to FF
     
'stack' = 0x19 takes four bytes.
     'red' = 00 to FF
     'green' = 00 to FF
     'blue' = 00 to FF
     'time' = 00 to FF

'cram' = 0x1a takes four bytes.
     'red' = 00 to FF
     'green' = 00 to FF
     'blue' = 00 to FF
     'time' = 00 to FF
     
'scan' = 0x1b takes four bytes.
     'red' = 00 to FF
     'green' = 00 to FF
     'blue' = 00 to FF
     'time' = 00 to FF

'neon' = 0x1c takes four bytes.
     'red' = 00 to FF
     'green' = 00 to FF
     'blue' = 00 to FF
     'time' = 00 to FF

'water' = 0x1d takes four bytes.
     'red' = 00 to FF
     'green' = 00 to FF
     'blue' = 00 to FF
     'time' = 00 to FF
   
'rainbow' = 0x1e takes one byte.
     'time' = 00 to FF  



#Switch to

#Off
sudo i2cset -y4 0x6a 0x30 0x10 s

#Static
sudo i2cset -y 4 0x6a 0x30 0x11 s
sudo i2cset -y 4 0x6a 0x11 0xFF 0x00 0x00 s

#Breathing
sudo i2cset -y 4 0x6a 0x30 0x12 s
sudo i2cset -y 4 0x6a 0x12 0xFF 0x00 0x00 0x10 s

#strobe
sudo i2cset -y 4 0x6a 0x30 0x13 s

#cycling
sudo i2cset -y 4 0x6a 0x30 0x14 s

#random
sudo i2cset -y 4 0x6a 0x30 0x15 s

#wave
sudo i2cset -y 4 0x6a 0x30 0x17 s
sudo i2cset -y 4 0x6a 0x17 0x01 s #slow
sudo i2cset -y 4 0x6a 0x17 0xfe s #fast

#spring
sudo i2cset -y 4 0x6a 0x30 0x18 s

#stack
sudo i2cset -y 4 0x6a 0x30 0x19 s

#cram
sudo i2cset -y 4 0x6a 0x30 0x1a s

#scan
sudo i2cset -y 4 0x6a 0x30 0x1b s

#neon
sudo i2cset -y 4 0x6a 0x30 0x1c s

#water
sudo i2cset -y 4 0x6a 0x30 0x1d s

#rainbow
sudo i2cset -y 4 0x6a 0x30 0x1e s
