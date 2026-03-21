#!/bin/bash

# Run the AppImage
iverilog -o rca_sim *.v
vvp rca_sim
gtkwave rca_test.vcd 
