# compile the modules
source compile.tcl > compile_log.log

# export MODELSIM=.

vsim -c -do "exit"  

vsim -voptargs=+acc -L altera_ver -L lpm_ver -L sgate_ver -L altera_mf -L altera_mf_ver -L altera_lnsim_ver -L cyclone10gx_ver -L work -suppress 14408 -suppress 16154 -suppress 12110 work.mvm1_tb -do "do wave.do; run -all"

# # add waveform signals 
# do ./wave.do

# # once we've identified signals we can run the sim to bring those out
# run -all