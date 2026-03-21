#!/bin/bash

# Run the AppImage
iverilog -o mux_sim *.v
vvp mux_sim
gtkwave mux_test.vcd 
