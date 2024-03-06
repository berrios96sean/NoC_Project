# compile the modules
source compile.tcl > compile_log.log

# export MODELSIM=.

vsim -c -do "exit" > build_log.log 


vsim -L altera_ver -L lpm_ver -L sgate_ver -L altera_mf_ver -L altera_lnsim_ver -L cyclone10gx_ver -suppress 14408 -suppress 16154 work.mvm1_tb 
# add waveform signals 
# do wave.do

# once we've identified signals we can run the sim to bring those out
# run -all