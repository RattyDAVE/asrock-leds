#! /bin/bash


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
    'music':0x17,
	  'spring':0x18

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
     
'scan' = 0x19 takes four bytes.
     'red' = 00 to FF
     'green' = 00 to FF
     'blue' = 00 to FF
     'time' = 00 to FF

'scan2' = 0x1a takes four bytes.
     'red' = 00 to FF
     'green' = 00 to FF
     'blue' = 00 to FF
     'time' = 00 to FF
     
'scan3' = 0x1b takes four bytes.
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

#Static
sudo i2cset 4 0x6a 0x30 0x11 s

#Breathing
sudo i2cset 4 0x6a 0x30 0x12 s

