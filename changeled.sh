#!/bin/bash

echo "Positional Parameters"
echo '$0 = ' $0
echo '$1 = ' $1
echo '$2 = ' $2
echo '$3 = ' $3
echo '$4 = ' $4
echo '$5 = ' $5


if [ "$1" = "" ]; then
echo "Display Help"
echo "$0 MODE [R G B] [S]"
echo "MODE:"
echo " 'off':0x10"
echo " 'static':0x11 r g b"
echo " 'breathing':0x12 r g b s"
echo " 'strobe':0x13 r g b s"
echo " 'cycling':0x14 s"
echo " 'random':0x15 s"
echo " 'wave':0x17 r g b s"
echo " 'spring':0x18 r g b s"
echo " 'stack':0x19 r g b s"
echo " 'cram':0x1a r g b s"
echo " 'scan':0x1b r g b s"
echo " 'neon':0x1c r g b s"
echo " 'water':0x1d r g b s"
echo " 'rainbow':0x1e s"
echo ""
echo " Example $0 0x1b 0xff 0xff 0xff 0x10"
echo "         Run with Mode=scan Colour=white Speed=10ms" 
fi

RGB_BUS=`i2cdetect -l|grep 0b20|cut -b 5`

case $1 in
    0x10)
        i2cset -y $RGB_BUS 0x6a 0x30 $1 s
        ;;
    0x11)
        i2cset -y $RGB_BUS 0x6a 0x30 $1 s
        i2cset -y $RGB_BUS 0x6a 0x34 $2 $3 $4 s 
        ;;        
    0x12 | 0x13 | 0x17| 0x18 | 0x19 | 0x1a | 0x1b | 0x1c | 0x1d)
        i2cset -y $RGB_BUS 0x6a 0x30 $1 s
        i2cset -y $RGB_BUS 0x6a $1 $5 s
        i2cset -y $RGB_BUS 0x6a 0x34 $2 $3 $4 s    
        ;;
    0x14 | 0x15 | 0x1e)
        i2cset -y $RGB_BUS 0x6a 0x30 $1 s
        i2cset -y $RGB_BUS 0x6a $1 $2 s
        ;;
 esac
 
