##compile run and open gtkwave

iverilog -c caf -o test;vvp test;gtkwave dump.vcd

##generate a only one file

iverilog -E -o all.sv -c caf
