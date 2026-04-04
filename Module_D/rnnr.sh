#!/bin/bash

# Run the AppImage
iverilog -o delay_sim *.v
vvp delay_sim
gtkwave delay_test.vcd 
