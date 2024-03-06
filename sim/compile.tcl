# set up new work directory each time script is called 

rm -rf work 
vlib work 


# compile testbench files 
vlog mvm1_tb.v 
vlog axis_traffic_gen.v 

# compile shared files 
vlog ../src/shared_verilog/noc_router_adapter_block.v 
vlog ../src/shared_verilog/simple_collector.v
vlog ../src/shared_verilog/simple_dispatcher.v
vlog ../src/shared_verilog/simple_mvm.v

# compile DSP Instance 
vlog ../src/int_sop_2/altera_c10gx_native_fixed_point_dsp_1910/synth/int_sop_2_altera_c10gx_native_fixed_point_dsp_1910_a67kikq.v
vlog ../src/int_sop_2/synth/int_sop_2.v

# compile single port ram 
vlog ../src/single_port_ram/ram_1port_2011/synth/single_port_ram_ram_1port_2011_otpmvnq.v
vlog ../src/single_port_ram/synth/single_port_ram.v

# compile MLP top 
vlog ../src/mvm1/mlp_1.v 

