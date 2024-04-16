source compile.sh

vsim -c -do "exit"  

vsim -voptargs=+acc -suppress 14408 -suppress 16154 work.testbench -do "do wave.do; run -all"

# # add waveform signals 
# do ./wave.do

# # once we've identified signals we can run the sim to bring those out
# run -all