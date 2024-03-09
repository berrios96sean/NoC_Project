# set up new work directory each time script is called 

rm -rf work 
vlib work 


# compile testbench files 
vlog -suppress 12110 mvm1_tb.v 
vlog -suppress 12110 axis_traffic_gen.v 

# compile shared files 
vlog -suppress 12110 ../src/shared_verilog/noc_router_adapter_block.v 

### Simple Design ###
# vlog -suppress 12110 ../src/shared_verilog/simple_collector.v
# vlog -suppress 12110 ../src/shared_verilog/simple_dispatcher.v
# vlog -suppress 12110 ../src/shared_verilog/simple_mvm_new.v  

### Stratix Design ###
# vlog -suppress 12110 ../src/shared_verilog/hard_block_include.v 
vlog -suppress 12110 ../src/shared_verilog/collector-proxy-stratixiv.v
vlog -suppress 12110 ../src/shared_verilog/dispatcher-proxy-stratixiv.v
vlog -suppress 12110 ../src/shared_verilog/mvm-proxy-stratixiv.v 

# compile DSP Instance 
# vlog -suppress 12110 ../src/int_sop_2/altera_c10gx_native_fixed_point_dsp_1910/synth/int_sop_2_altera_c10gx_native_fixed_point_dsp_1910_6lgytvi.v
# vlog -suppress 12110 ../src/int_sop_2/synth/int_sop_2.v

# compile single port ram 
# vlog -suppress 12110 ../src/single_port_ram/ram_1port_2011/synth/single_port_ram_ram_1port_2011_otpmvnq.v
# vlog -suppress 12110 ../src/single_port_ram/synth/single_port_ram.v

# compile MLP top 
vlog -suppress 12110 ../src/mvm1/mlp_1.v 

