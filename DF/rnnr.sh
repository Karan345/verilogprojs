#!/bin/bash

# Run the AppImage
iverilog -o counter_sim D_FF.v stimulus.v 
vvp counter_sim
gtkwave cdff_test.vcd 
